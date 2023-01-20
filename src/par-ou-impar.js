//Jogador irá escolhe ímpar ou par, em seguida escolhe um número de 0 à 10.


const jogador=process.argv[2]
const numeroEscolhido=process.argv[3]
console.log(`você escolheu ${jogador}`)
console.log(`Você escolheu ${Number(numeroEscolhido)}`)
if(!jogador){
    console.log("Escolha um número  par ou ímpar")
}if(jogador=== "par"){
    function maxMin(min, max){
        return Math.floor(Math.random() * (max - min +1)) +min;
        
    }

////PC irá escolher ímpar ou par, em seguida escolhe um número de 0 à 10.


    const numeroAleatorio=maxMin(0,10)
console.log("o PC escolheu ímpar")
console.log(`O PC escolheu ${numeroAleatorio}`)
let total = Number(numeroEscolhido) + Number(numeroAleatorio)
console.log( `  A soma dos números deu ${total}` )
total %2===0? console.log("você ganhou"): console.log("Você perdeu")


}
else{
    function numeroPC(min, max){
        return Math.floor(Math.random() * (max - min +1)) +min;
    }

    // Irá somar o número escolhido pelo JOGADOR e pelo PC e ver se deu ÍMPAR OU PAR, no final aparecerá quem ganhou.

    const numeroAleatorio=numeroPC(0, 10)
    console.log("O PC escolheu par")
    console.log(`O PC escolheu ${numeroAleatorio}`)
    let total = Number(numeroJogador) + Number(numeroAleatorio)
    console.log( `  A soma dos números deu ${total}` )
    total %2===1? console.log("você ganhou"): console.log("Você perdeu")}