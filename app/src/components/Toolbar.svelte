<script>
  import { Toolbar, ToolbarButton, ToolbarGroup } from "flowbite-svelte";
  import { goto } from "$app/navigation";
  import { HomeOutline } from "flowbite-svelte-icons";
  function navigateToHomePage() {
    // Specify the URL to redirect to (e.g., '/')
    const homePageURL = "/";

    // Use the goto function to navigate to the home page
    goto(homePageURL);
  }
</script>

<!-- Use the classes you defined in the style section -->
<Toolbar class="toolbar bg-teal-700">
  <ToolbarButton
    class="toolbar-button text-teal-50"
    on:click={navigateToHomePage}
  >
    <HomeOutline class="w-6 h-6" />
  </ToolbarButton>
</Toolbar>
