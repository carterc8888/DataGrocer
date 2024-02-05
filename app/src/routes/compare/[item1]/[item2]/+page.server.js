import { getPriceForItem, getAllItems } from "$lib/index.js";

export async function load({ params }) {
  const item1 = params.item1;
  const item2 = params.item2;

  const prices1 = await getPriceForItem(item1);
  const prices2 = await getPriceForItem(item2);
  const allItems = await getAllItems();

  return {
    item1: item1,
    item2: item2,
    prices1: prices1,
    prices2: prices2,
    allItems: allItems,
  };
}
