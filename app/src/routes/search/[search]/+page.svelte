<script>
  import Toolbar from "../../../components/Toolbar.svelte";
  import Card from "../../../components/Card.svelte";
  export let data;
</script>

<div class="flex flex-col bg-teal-50/[.5]">
  <Toolbar />
  <h1 class="text-6xl text-orange-400 m-10">Results for "{data.search}"</h1>
  <div
    class="grid gap-10 my-0 mx-auto grid-cols-1 md:grid-cols-2 lg:grid-cols-3"
  >
    {#if data.items.length === 0}
      <h2 class="text-4xl text-teal-500 m-5">No results found</h2>
    {/if}
    {#each data.items as { name, category, averagePrice, latestDate }}
      <Card item={name} {category} {averagePrice} {latestDate}></Card>
    {/each}
  </div>
</div>
