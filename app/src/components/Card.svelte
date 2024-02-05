<script>
  export let item; // The item object
  export let category;
  export let averagePrice; // Average price
  export let latestDate; // Latest date
</script>

<a href="/item/{item}">
  <div
    class="p-5 w-72 rounded border border-neutral-500 transition duration-300 bg-teal-600 hover:bg-teal-700 text-white"
  >
    <p class="block mb-2 text-2xl font-bold tracking-tight">
      {item}
    </p>
    <p><b>Category: </b>{category}</p>
    <p><b>Average Price: </b>${averagePrice.toFixed(2)}</p>
    <p>
      <b>Latest Date: </b>{latestDate.toLocaleDateString(undefined, {
        year: "numeric",
        month: "2-digit",
        day: "2-digit",
      })}
    </p>
    <p><b>Click to view Price Trends</b></p>
  </div>
</a>
