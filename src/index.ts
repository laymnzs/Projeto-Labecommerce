/*import { users, products, purchase} from "./database";

console.table(users)
console.table(products)
console.table(purchase)*/

import {
    acessProductId,
    acessProductsName,
    createPurchase,
    getAllPurchasesFromUserId
} from "./database";

console.log(acessProductsName("prato"));
console.log(createPurchase("1", "faca", 50, 30));
console.log(acessProductId("2"))