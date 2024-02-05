<script>
  import Toolbar from "../../../components/Toolbar.svelte";
  import Card from "../../../components/Card.svelte";

  export let data;
</script>

<div class="flex flex-col">
  <Toolbar />
  <h1 class="text-6xl text-orange-400 m-10">{data.category}</h1>
  <div
    class="grid gap-10 my-0 mx-auto grid-cols-1 md:grid-cols-2 lg:grid-cols-3"
  >
    {#each data.items as { name, category, averagePrice, latestDate }}
      <Card item={name} {category} {averagePrice} {latestDate}></Card>
    {/each}
  </div>
</div>
