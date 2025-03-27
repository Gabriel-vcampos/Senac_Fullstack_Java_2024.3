import { cliente } from "./typescript";


export class CalculoCliente{
    constructor (private classCliente: cliente){}

    valoresSoma = {
        "a": 1,
        "b": 2
    }
    valorSoma = this.classCliente.soma(this.valoresSoma);
}

