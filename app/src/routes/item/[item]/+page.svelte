<script>
  import Toolbar from "../../../components/Toolbar.svelte";
  import Chart from "../../../components/Chart.svelte";
  import ChartGeo from "../../../components/ChartGeo.svelte";

  export let data;

  let selectedYear = "Average";
  let selectedCategory = "";
  let selectedItem = "";
  let years = [];
  let categories = [];
  let itemsInSelectedCategory = [];

  // retrieve all dates available for the item
  const dates = data.prices.reduce((acc, row) => {
    if (!acc.some((r) => r.getTime() === row.date.getTime())) {
      acc.push(row.date);
    }
    return acc;
  }, []);

  // function to convert the month in date string into yearly quarter
  function toQuarter(date_str) {
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

  $: years = [
    ...new Set(
      dates.map((date) =>
        date.toLocaleString("default", { month: "short", year: "2-digit" }),
      ),
    ),
  ];
  $: categories = [...new Set(data.allItem.map((item) => item.category))];
  $: itemsInSelectedCategory = data.allItem
    .filter((item) => item.category === selectedCategory)
    .map((item) => item.name);
</script>

<div class="flex flex-col bg-teal-50/[.5]">
  <Toolbar />
  <h1 class="text-6xl text-orange-400 m-10 mb-5">{data.item}</h1>
  <div class="w-full flex justify-center items-center pt-2 pb-6">
    <select bind:value={selectedCategory} class="border rounded p-2 mr-2">
      <option value="" disabled>Select a Category</option>
      {#each categories as category}
        <option value={category}>{category}</option>
      {/each}
    </select>

    <select bind:value={selectedItem} class="border rounded p-2 mr-2">
      <option value="" disabled>Select an Item</option>
      {#each itemsInSelectedCategory as item}
        <option value={item}>{item}</option>
      {/each}
    </select>

    <button
      on:click={() => {
        if (selectedCategory && selectedItem) {
          location.href = `/compare/${data.item}/${selectedItem}`;
        }
      }}
      class="border rounded p-2 bg-orange-400 text-white"
    >
      Compare with item
    </button>
  </div>
  {#if data.prices.length === 0}
    <h2 class="text-4xl text-teal-500 m-5">No data available</h2>
  {:else}
    <Chart prices={data.prices} />
    <h2 class="text-4xl text-blue-800 m-5">Price map</h2>
    <h3 class="text-lg text-blue-600 font-semibold tracking-wide m-3">
      Choose a year (and quarter):
    </h3>
    <div class="w-full flex justify-center items-center pt-2 pb-6">
      <select bind:value={selectedYear} class="border rounded p-2 mr-2">
        <option value="Average">Average</option>
        {#each years as year}
          <option value={year}>{toQuarter(year)}</option>
        {/each}
      </select>
    </div>
    <h3 class="text-lg text-blue-600 font-semibold tracking-wide m-3">
      Place your cursor in each state/territory to see the price for its capital
      city
    </h3>
    {#key selectedYear}
      <ChartGeo prices={data.prices} input_year={selectedYear} />
    {/key}
  {/if}
  <h1 class="text-lg text-gray-600 tracking-wide m-0 mr-8" align="right">
    in AU$
  </h1>
</div>
