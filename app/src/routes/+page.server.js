import { getAllCategories } from "$lib/index.js";

export async function load() {
  const categories = await getAllCategories();

  return {
    categories: categories,
  };
}
