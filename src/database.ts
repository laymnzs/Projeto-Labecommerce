import { TUser, TProduct, TPurchase, PRODUCT_CATEGORY } from "./types";

export const users : TUser[] = [
    {
        id: "1",
        name: "Layane",
        email: "lay@email.com",
        password: "220703"
    },
    {
        id: "2",
        name: "Lucas",
        email: "layusca@email.com",
        password: "160722"
    },
    {
        id: "3",
        name: "Study",
        email: "study@email.com",
        password: "2023"
    }
];

export const products : TProduct[] = [
    {
        id: "1",
        name: "prato",
        price: 30,
        category: PRODUCT_CATEGORY.cozinha
    },
    {
        id: "2",
        name: "garfo",
        price: 25,
        category: PRODUCT_CATEGORY.cozinha
    },
    {
        id: "3",
        name: "faca",
        price: 10,
        category: PRODUCT_CATEGORY.cozinha
    }
]

export const purchase : TPurchase[] = [
    {
        userId: "1",
        productId: "01",
        quantity: 50,
        totalPrice: 30
    },
    {
        userId: "2",
        productId: "02",
        quantity: 6,
        totalPrice: 40
    },
    {
        userId: "3",
        productId: "03",
        quantity: 15,
        totalPrice: 30
    }
]

export function createUser(id : string, name:string, email : string, password : string) : string{

users.push({
    id,
    name,
    email,
    password
});

return  ("Cadastro realizado com sucesso");

}

export function getAllUsers() : TUser[]{
    return users;
}

export function createProduct(id : string, name : string, price : number, category : PRODUCT_CATEGORY) : string {
    products.push({
        id,
        name,
        price,
        category
    })

    return ("Produto criado com sucesso");
}

export function acessProducts() : TProduct[]{
    return products;
}

export function acessProductId(id : string) : (undefined | TProduct){
    return products.find(product => product.id === id);
}

export function acessProductsName(q : string) : TProduct[]{
    return products.filter(product => product.name.toLocaleLowerCase().includes(q.toLocaleLowerCase()));
}

export function createPurchase(userId : string, productId : string, quantity : number, totalPrice : number) : string{
    purchase.push({
        userId,
        productId,
        quantity,
        totalPrice
    })

    return("Compra realizada com sucesso");
}

export function getAllPurchasesFromUserId(userIdToSearch : string) : TPurchase[]{
    return purchase.filter(purchase => purchase.userId === userIdToSearch);
}