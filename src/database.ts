import { TUser, TProduct, TPurchase } from "./types";

export const users : TUser[] = [
    {
        id: "1",
        email: "lay@email.com",
        password: "220703"
    },
    {
        id: "2",
        email: "layusca@email.com",
        password: "160722"
    }
];

export const products : TProduct[] = [
    {
        id: "1",
        name: "prato",
        price: 30,
        category: "kitchen"
    }
]

export const purchase : TPurchase[] = [
    {
        userId: "1",
        productId: "plate",
        quantity: 50,
        totalPrice: 30
    }
]