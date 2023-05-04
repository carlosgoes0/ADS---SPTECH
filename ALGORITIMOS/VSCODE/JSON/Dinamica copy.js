var sala = {
    Nome: "Sala 1",
    Andar: 6,
    Capacidade: 70,
    Lampada: lampada,
    fileiras: {
        fileira1,
        fileira2,
    },

    interruptor: function (fileira) {
        fileira.Power = !(fileira.Power)
        console.log(`Status da fileira: ${fileira.Power}`)
     }
}

var fileira1 = {
    Qtd: 10,
    Marca: "Philips",
    Modelo: "A60",
    Potencia: 10,
    Tensao: 220,
    Corrente: 0.05,
    Lumens: 806, 
    Power: false, 

    interruptorFileira: function () {
        sala.interruptor(this);
    }
}

var fileira2 = {
    Qtd: 10,
    Marca: "Philips",
    Modelo: "A60",
    Potencia: 10,
    Tensao: 220,
    Corrente: 0.05,
    Lumens: 806, 
    Power: false, 

    interruptorFileira: function () {
        sala.interruptor(this);
    }
}


