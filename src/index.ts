import { users, products, purchase} from "./database";

/*console.table(users)
console.table(products)
console.table(purchase)*/


/*console.log(acessProductsName("prato"));
console.log(createPurchase("1", "faca", 50, 30));
console.log(acessProductId("2"))*/

//:)

import {
    acessProductId,
    acessProductsName,
    createPurchase,
    getAllPurchasesFromUserId
} from "./database";

import cors from 'cors'


//importar o express

import express, { Request, Response } from 'express'
import { TProduct, TUser, TPurchase } from "./types";

//INVOCAR A FUNÇÃO EXPRESS() DENTRO DA VARIAVEL APP

const app = express();// //console.log(acessarProductsName("prato"));

//console.log(createPurchase("1", "faca", 50, 30));

app.use(express.json())
app.use(cors())

app.listen(3003, () => {
    console.log("Servidor rodando na porta 3003")
})
//PEGANDO O EXPRESS E FALANDO ONDE QUER QUE RODE, NO CASO SERÁ NO 3003

//Ping Pong:

app.get("/ping", (req: Request, res: Response) => {
    res.send("pong")
})


app.get("/users", (req: Request, res: Response) => {
res.status(200).send(users)
})

app.get("/products", (req: Request, res: Response) => {
    try {
        res.status(200).send(products);
    } catch (error: any) {
        console.log(error);

        if (res.statusCode === 200) {
            res.status(500);
        }

        res.send(error.message);
    }
});

//query params tem que ter pelo menos UM caractere

app.get("/product/search", (req: Request, res: Response) => {
    let productFilter;
    try {
        const q = req.query.q as string;

        if (q.length <= 1) {
            res.status(400);
            throw new Error("query params deve ter UM caractere");
        }

        productFilter = products.filter((product) => {
            return product.name.toLowerCase().includes(q.toLowerCase());
        });
        res.status(200).send(productFilter);
    } catch (error: any) {
        console.log(error);

        if (res.statusCode === 200) {
            res.status(500);
        }

        res.send(error.message);
    }
});

//Criando novo usuário; Validar o body;
// NÃO deve ser possível criar mais de uma conta com a mesma id e o mesmo e-mail


app.post("/users", (req: Request, res: Response) => {
    try {
        const id = req.body.id;
        const email = req.body.email;
        const password = req.body.password;

        const findId = users.find((user) => user.id === id);

        if (findId) {
            res.status(400);
            throw new Error("ID indisponível");
        }

        const findEmail = users.find((user) => user.email === email);

        if (findEmail) {
            res.status(400);
            throw new Error("E-MAIL indisponível");
        }

        const newUser: TUser = {
            id,
            email,
            password,
        };

        users.push(newUser);
        res.status(201).send("Usuário criado com sucesso!");
    } catch (error: any) {
        console.log(error);

        if (res.statusCode === 200) {
            res.status(500);
        }

        res.send(error.message);
    }
});

//Criando novo produto com o POST; Validar o body
// NÃO deve ser possível criar mais de um produto com a mesma id

app.post("/products", (req: Request, res: Response) => {
    try {
        const id = req.body.id;
        const name = req.body.name;
        const price = req.body.price;
        const category = req.body.category;

        const findId = products.find((product) => product.id === id);

        if (findId) {
            res.status(400);
            throw new Error("ID indisponivel");
        }

        const newProduct: TProduct = {
            id,
            name,
            price,
            category,
        };

        products.push(newProduct);
        res.status(201).send("Produto criado com sucesso!");
    } catch (error: any) {
        console.log(error);

        if (res.statusCode === 200) {
            res.status(500);
        }

        res.send(error.message);
    }
});
//Compra criada com o POST; Validar o body;
// ID do usuário, produtos, quantidade e total que fez a compra deve existir no array de usuários cadastrados e com o calculo correto;

app.post("/purchase", (req: Request, res: Response) => {

    try {
        const userId = req.body.userId
        const productId = req.body.productId
        const quantity = req.body.quantity
        const totalPrice = req.body.totalPrice

        const newPurchase: TPurchase = { userId, productId, quantity, totalPrice }
        purchase.push(newPurchase)
        res.status(201).send("Compra realizada com sucesso!")

    } catch (error) {

    }
})
app.post("/purchases", (req: Request, res: Response) => {
    try {
        const userId = req.body.userId;
        const productId = req.body.productId;
        const quantity = req.body.quantity;
        const totalPrice = req.body.totalPrice;

        const findIdUser = purchase.find((purchase) => purchase.userId === userId);

        if (!findIdUser) {
            res.status(400);
            throw new Error("ID do usuário não existe!");
        }

        const findIdProduct = products.find(
            (product) => product.id === productId
        );

        if (!findIdProduct) {
            res.status(400);
            throw new Error("ID do produto não existe!");
        }


        if (findIdProduct.price * quantity !== totalPrice) {
            res.status(400)
            throw new Error("Total incorreto!");
        }

        const newPurchase: TPurchase = {
            userId,
            productId,
            quantity,
            totalPrice,
        };

        purchase.push(newPurchase);
        res.status(201).send("Compra efetuada com sucesso!");
    } catch (error: any) {
        console.log(error);

        if (res.statusCode === 200) {
            res.status(500);
        }

        res.send(error.message);
    }
});



