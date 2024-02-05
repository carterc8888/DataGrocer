<script>
  import Toolbar from "../../../../components/Toolbar.svelte";
  import ChartComparison from "../../../../components/ChartComparison.svelte";

  export let data;

  let selectedCategory1 = "";
  let selectedItem1 = "";

  let selectedCategory2 = "";
  let selectedItem2 = "";

  $: categories = [...new Set(data.allItems.map((item) => item.category))];
  $: itemsInSelectedCategory1 = data.allItems
    .filter((item) => item.category === selectedCategory1)
    .map((item) => item.name);
  $: itemsInSelectedCategory2 = data.allItems
    .filter((item) => item.category === selectedCategory2)
    .map((item) => item.name);
</script>

<Toolbar />
<div class="flex flex-row flex-wrap bg-teal-50/[.5]">
  <div class="w-1/2 justify-center items-center p-5">
    <a href="/item/{data.item1}" class="text-6xl text-orange-400">{data.item1}</a>
    <br />
    <select bind:value={selectedCategory1} class="border rounded p-2 mr-2 mt-5">
      <option value="" disabled>Select a Category</option>
      {#each categories as category}
        <option value={category}>{category}</option>
      {/each}
    </select>

    <select bind:value={selectedItem1} class="border rounded p-2 mr-2 mt-5">
      <option value="" disabled>Select an Item</option>
      {#each itemsInSelectedCategory1 as item}
        <option value={item}>{item}</option>
      {/each}
    </select>

    <button
      on:click={() => {
        if (selectedCategory1 && selectedItem1) {
          location.href = `/compare/${selectedItem1}/${data.item2}`;
        }
      }}
      class="border rounded p-2 bg-orange-400 text-white"
    >
      Change item
    </button>
  </div>

  <div class="w-1/2 justify-center items-center p-5">
    <a href="/item/{data.item2}" class="text-6xl text-orange-400">{data.item2}</a>
    <br />
    <select bind:value={selectedCategory2} class="border rounded p-2 mr-2 mt-5">
      <option value="" disabled>Select a Category</option>
      {#each categories as category}
        <option value={category}>{category}</option>
      {/each}
    </select>

    <select bind:value={selectedItem2} class="border rounded p-2 mr-2 mt-5">
      <option value="" disabled>Select an Item</option>
      {#each itemsInSelectedCategory2 as item}
        <option value={item}>{item}</option>
      {/each}
    </select>

    <button
      on:click={() => {
        if (selectedCategory2 && selectedItem2) {
          location.href = `/compare/${data.item1}/${selectedItem2}`;
        }
      }}
      class="border rounded p-2 bg-orange-400 text-white"
    >
      Change item
    </button>
  </div>

  <ChartComparison {...data} />
</div>
