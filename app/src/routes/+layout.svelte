<script>
  import "../app.css";
</script>

<svelte:head>
  <title>DataGrocer: Group CS_03</title>
</svelte:head>

<div class="bg-teal-50 background text-center h-full min-h-screen">
  <slot />
</div>

<style>
  .background {
    background-image: url("../../waves_background.svg"); /* Update with your SVG image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
  }
</style>
