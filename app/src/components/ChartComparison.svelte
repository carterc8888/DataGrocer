<script>
  import { Line } from "svelte-chartjs";
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

  export let item1;
  export let prices1;
  export let item2;
  export let prices2;

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

  const dates = prices1.reduce((acc, row) => {
    if (!acc.some((r) => r.getTime() === row.date.getTime())) {
      acc.push(row.date);
    }
    return acc;
  }, []);

  const averagePrices1 = dates.map((date) => {
    const cityRows = prices1.filter(
      (row) => row.date.getTime() === date.getTime(),
    );
    const totalPrice = cityRows.reduce(
      (sum, row) => sum + parseFloat(row.price),
      0,
    );
    const averagePrice = totalPrice / cityRows.length;
    return averagePrice;
  });

  const averagePrices2 = dates.map((date) => {
    const cityRows = prices2.filter(
      (row) => row.date.getTime() === date.getTime(),
    );
    const totalPrice = cityRows.reduce(
      (sum, row) => sum + parseFloat(row.price),
      0,
    );
    const averagePrice = totalPrice / cityRows.length;
    return averagePrice;
  });

  let data = {
    labels: dates.map((date) =>
      toQuarters(
        date.toLocaleString("default", { month: "short", year: "2-digit" }),
      ),
    ),
    datasets: [
      {
        label: item1, // Use the first item's name as the label
        data: averagePrices1.map((price) => price / 100), //convert to dollars
        borderWidth: 1,
        borderColor: "crimson", // Change the color to crimson red
        backgroundColor: "crimson", // Change the color to crimson red
      },
      {
        label: item2, // Use the second item's name as the label
        data: averagePrices2.map((price) => price / 100), //convert to dollars
        borderWidth: 1,
        borderColor: "blue", // Change the color to blue (or any color you prefer)
        backgroundColor: "blue", // Change the color to blue (or any color you prefer)
      },
    ],
  };
</script>

<Line
  {data}
  options={{
    responsive: true,
    hover: {
      mode: "nearest",
      intersect: true,
    },
    plugins: {
      title: {
        display: true,
        text: "Average Domestic Price Trend",
        font: { size: 25 },
      },
      subtitle: {
        display: false, // You can remove the subtitle if not needed.
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
  }}
/>
