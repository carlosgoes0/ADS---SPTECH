
var fileira1 = {
    Qtd: 10,
    Marca: "Philips",
    Modelo: "A60",
    Potencia: 10,
    Tensao: 220,
    Corrente: 0.05,
    Lumens: 806, 
    Power: false, 

    interruptor: function () {
        if(this.Power == true) {
           this.Power = false;
        }else {this.Power = true;}
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

    interruptor: function (valor) {

        if (valor == null) {
            if(this.Power == true) {
                this.Power = false;
             }else {this.Power = true;}
        } else {
            this.Power = valor;
        }
        
        
     }
}

var sala = {
    Nome: "Sala 1",
    Andar: 6,
    Capacidade: 70,
    Lampada: lampada,
    fileiras: {
        fileira1,
        fileira2,
    },

    interruptor: function () {
        this.fileira1.interruptor();
        fileira2.interruptor(true);
    }


}

salaq.fileiras.fileira1.interruptor(tr)

