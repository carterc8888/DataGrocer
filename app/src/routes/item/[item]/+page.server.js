import { getPriceForItem, getAllItems } from "$lib/index.js";

export async function load({ params }) {
  const item = params.item;

  const prices = await getPriceForItem(item);
  const allItem = await getAllItems();

  return {
    item: item,
    prices: prices,
    allItem: allItem,
  };
}
