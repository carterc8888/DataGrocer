import { searchItems, getInfoForItems } from "../../../lib/index.js";

export async function load({ params }) {
  const search = params.search;
  const items = await searchItems(search);
  const items_with_info = await getInfoForItems(items);

  return {
    search: search,
    items: items_with_info,
  };
}
