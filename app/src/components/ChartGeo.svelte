<script>
  import * as ChartGeo from "chartjs-chart-geo";
  import * as aus from "$lib/aus.topo.json";
  import { Chart } from "svelte-chartjs";
  import {
    Chart as ChartJS,
    Title,
    Tooltip,
    Legend,
    LineElement,
    LinearScale,
    PointElement,
    CategoryScale,
    Filler,
  } from "chart.js";
  ChartJS.register(
    Title,
    Tooltip,
    Legend,
    LineElement,
    LinearScale,
    PointElement,
    CategoryScale,
    Filler,
    ChartGeo.ChoroplethController,
    ChartGeo.ProjectionScale,
    ChartGeo.ColorScale,
    ChartGeo.GeoFeature,
  );

  export let prices;
  export let input_year;

  const cities = prices.reduce((acc, row) => {
    if (!acc.includes(row.location)) {
      acc.push(row.location);
    }
    return acc;
  }, []);

  const datasets =
    input_year === "Average"
      ? cities.map((city) => prices.filter((row) => row.location === city))
      : cities.map((city) =>
          prices.filter(
            (row) =>
              row.location === city &&
              row.date.toLocaleString("default", {
                month: "short",
                year: "2-digit",
              }) === input_year,
          ),
        );

  function find_ave(cityRows, city) {
    const rows = cityRows.filter((row) => row.location === city);
    const totalPrice = rows.reduce(
      (sum, row) => sum + parseFloat(row.price),
      0,
    );
    const averagePrice = totalPrice / rows.length;
    return averagePrice / 100;
  }

  function find_data(city) {
    const nums = datasets.map((cityRows) => find_ave(cityRows, city));
    const num = nums.filter(Boolean);
    return num[0];
  }
  const features = ChartGeo.topojson.feature(aus, aus.objects.aus).features;

  const data = {
    labels: features.map((d) => d.properties.city + " (AU$)"),
    datasets: [
      {
        outline: features,
        showOutline: true,
        data: features.map((d) => ({
          feature: d,
          value: find_data(d.properties.city),
        })),
      },
    ],
  };

  const options = {
    plugins: {
      legend: {
        display: false,
      },
    },
    scales: {
      projection: {
        axis: "x",
        projection: "mercator",
      },
      color: {
        axis: "x",
        quantize: 10,
        legend: {
          position: "bottom-right",
          align: "bottom",
        },
      },
    },
  };
</script>

<Chart type="choropleth" {data} {options} />
