import { getItemsForCategory, getInfoForItems } from "$lib/index.js";

export async function load({ params }) {
  const category = params.category;
  const items = await getItemsForCategory(category);
  const items_with_info = await getInfoForItems(items);

  return {
    items: items_with_info,
    category: category,
  };
}
