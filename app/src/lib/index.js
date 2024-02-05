// place files you want to import through the `$lib` alias in this folder.
import Knex from "knex";

const knex = new Knex({
  client: "pg",
  connection: {
    host: "fit316x.cvsli88352ui.ap-southeast-2.rds.amazonaws.com",
    database: "fit316x",
    password: "password",
    port: 5432,
    searchPath: "absdata",
    user: "postgres",
    ssl: {
      sa: "mysql-ssl-ca-cert.pem",
      rejectUnauthorized: false,
    },
  },
});
async function query(callBack) {
  try {
    const result = await callBack();
    return result;
  } catch (error) {
    return [];
  }
}
export async function getAllCategories() {
  return query(() => knex("absdata.category").select("*"));
}
export async function getAllCities() {
  return query(() => knex("absdata.location").select());
}
export async function getAllItems() {
  return query(() => knex("absdata.item").select("*"));
}

export async function getPriceForItem(item) {
  return query(() =>
    knex("absdata.price").where("item", item).orderBy("date", "asc").select(),
  );
}
export async function getItemsForCategory(category) {
  return query(() => knex("absdata.item").where("category", category).select());
}
export async function getCategoryForItem(item) {
  return query(() =>
    knex("absdata.item").where("name", item).select("category"),
  );
}

export async function searchItems(search) {
  return query(() =>
    knex("absdata.item").where("name", "ilike", `%${search}%`).select(),
  );
}

export async function getInfoForItems(items) {
  const items_copy = items.slice();

  const item_prices = await Promise.all(
    items.map((item) => getPriceForItem(item.name)),
  );

  items_copy.forEach((item, i) => {
    const prices = item_prices[i];

    let latestDate = new Date(0);
    let latestPrices = [];

    for (const price of prices) {
      const date = new Date(price.date);
      if (date.getTime() > latestDate.getTime()) {
        latestDate = date;
        latestPrices = [price];
      } else if (date.getTime() === latestDate.getTime()) {
        latestPrices.push(price);
      }
    }

    item.averagePrice =
      latestPrices.reduce((acc, curr) => acc + Number(curr.price), 0) /
        latestPrices.length /
        100 || 0;
    item.latestDate = latestDate;
  });

  return items_copy;
}
