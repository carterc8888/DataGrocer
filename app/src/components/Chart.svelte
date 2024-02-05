<script>
  import { Line } from "svelte-chartjs";
  import { onMount } from "svelte";
  import Slider from "./slider.svelte";
  import {
    Chart as ChartJS,
    Title,
    SubTitle,
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
    SubTitle,
    Tooltip,
    Legend,
    LineElement,
    LinearScale,
    PointElement,
    CategoryScale,
    Filler,
  );

  export let prices;

  const colorScheme = {
    Sydney: "#f9ca24",
    Melbourne: "#f0932b",
    Brisbane: "#eb4d4b",
    Adelaide: "#6ab04c",
    Perth: "#7ed6df",
    Hobart: "#e056fd",
    Darwin: "#686de0",
    Canberra: "#B33771",
  };

  function getColour(city) {
    return colorScheme[city] ?? "#000000";
  }

  const cities = prices.reduce((acc, row) => {
    if (!acc.includes(row.location)) {
      acc.push(row.location);
    }
    return acc;
  }, []);

  const dates = prices.reduce((acc, row) => {
    if (!acc.some((r) => r.getTime() === row.date.getTime())) {
      acc.push(row.date);
    }
    return acc;
  }, []);

  const years = dates.reduce((acc, date) => {
    const year = date.toLocaleString("default", { year: "numeric" });
    if (!acc.includes(year)) {
      acc.push(year);
    }

    return acc;
  }, []);

  // function to convert the month in date string into yearly quarter
  function toQuarters(date_str) {
    const date = date_str.split(" ");
    if (date[0] == "Mar") {
      return "20" + date[1] + " Q1";
    } else if (date[0] == "Jun") {
      return "20" + date[1] + " Q2";
    } else if (date[0] == "Sep") {
      return "20" + date[1] + " Q3";
    } else {
      return "20" + date[1] + " Q4";
    }
  }

  const datasets = cities.map((city) =>
    prices.filter((row) => row.location === city),
  );
  let start = 0;
  let end = 1;
  let filteredDates;
  let filteredDatasets;

  $: {
    let min = Math.floor(dates.length * start);
    let max = Math.floor(dates.length * end);
    filteredDates = dates.slice(min, max);
    filteredDatasets = datasets.map((cityRows) =>
      cityRows.filter((_, i) => i >= min && i < max),
    );
    if (min < max) {
      data.labels = filteredDates.map((date) =>
        toQuarters(
          date.toLocaleString("default", { month: "short", year: "2-digit" }),
        ),
      );
      data.datasets = filteredDatasets.map((cityRows) => ({
        label: cityRows[0].location,
        data: cityRows.map((row) => row.price / 100), //convert to dollars
        borderWidth: 1,
        borderColor: getColour(cityRows[0].location),
        backgroundColor: getColour(cityRows[0].location),
      }));
    }
  }

  let data = {
    labels: filteredDates,
    datasets: filteredDatasets,
  };
  let options = {
    responsive: true,
    hover: {
      mode: "nearest",
      intersect: true,
    },
    plugins: {
      title: {
        display: true,
        text: "Domestic price-trend graph (data sourced from Australian Bureau of Statistics)",
        font: { size: 25 },
      },
      subtitle: {
        display: true,
        text: "Click on each State/Territory label below to exclude its plot from the view below",
        font: { size: 20 },
      },
    },
    scales: {
      y: {
        title: {
          display: true,
          text: "Price (AU$)",
          font: { size: 20 },
        },
        ticks: {
          font: { size: 20 },
        },
      },
      x: {
        title: {
          display: true,
          text: "Time: in quarters (Q1: Jan-Mar, Q2: Apr-Jun, Q3:July-Sep, Q4:Oct-Dec)",
          font: { size: 20 },
        },
        ticks: {
          font: { size: 15 },
        },
      },
    },
  };

  onMount(() => {
    options.animation = false;
  });
</script>

<Line {data} {options} />
<div class="m-8 w-25">
  <Slider bind:start bind:end markerLabels={years} class="w-30 m-4" />
</div>
