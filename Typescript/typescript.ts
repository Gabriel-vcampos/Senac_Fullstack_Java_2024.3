export class cliente {
    id: number;
    nome: string;
    age: number;
    cpf: number;

    numerosSoma = {
        "a": 1,
        "b": 2
    }
    resultadoSoma: any = this.soma(this.numerosSoma);

     soma(body: ElementosSoma){
        const elementoA = body.a;
        const elementoB = body.b;
        const resultado = elementoA + elementoB;
    }
}

export interface ElementosSoma{
    a: number;
    b: number;
}