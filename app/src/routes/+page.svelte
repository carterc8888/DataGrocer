<script>
  import { goto } from "$app/navigation";
  import Toolbar from "../components/Toolbar.svelte";
  export let data;

  let searchTerm = "";

  function handleSearch() {
    if (searchTerm) {
      goto(`search/${encodeURIComponent(searchTerm)}`);
    }
  }
</script>

<div class="flex flex-col">
  <Toolbar />
  <h1 class="text-9xl text-teal-700 m-10">DataGrocer</h1>
  <h2 class="text-4xl text-teal-500 m-5">Welcome to the main page</h2>

  <form
    class="m-10 flex justify-center content-center"
    on:submit|preventDefault={handleSearch}
  >
    <input
      class="rounded-l-xl p-1.5 border border-r-0 border-neutral-500 w-1/2"
      id="search"
      placeholder="Search for an item"
      bind:value={searchTerm}
    />
    <button
      type="submit"
      class="rounded-r-xl bg-teal-500 border border-l-0 border-neutral-500 text-white p-2"
      >Search</button
    >
  </form>

  <div class="flex flex-wrap justify-center items-center m-100">
    {#each data.categories as category}
      <a
        class="button text-teal-700 text-2xl m-5 p-5 rounded-full border border-neutral-500 transition duration-300 bg-teal-100 hover:bg-teal-300"
        href="category/{category.name}"
      >
        {category.name}
      </a>
    {/each}
  </div>
</div>
