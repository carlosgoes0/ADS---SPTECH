#include "DHT.h"
#define dht_type DHT11 //define qual o tipo de sensor DHTxx que se está 
/**
* Configurações iniciais sobre os sensores
* DHT11, LM35, LDR5 e TCRT5000
*/
int dht_pin = A1;
DHT dht_1 = DHT(dht_pin, dht_type); //pode-se configurar diversos 

int switch_pin = 7;
void setup() {
  // put your setup code here, to run once:
pinMode(A0, INPUT);
pinMode(4, OUTPUT);
Serial.begin(9600);
pinMode(A2, INPUT);}
void loop() {
  // put your main code here, to run repeatedly:
  int valor = analogRead(A0);
  int valor = leitura_lm35(A2);
 // Serial.println(valor);

  if(digitalRead(switch_pin) == LOW){
Serial.println(1);
}
else {
Serial.println(0);
}
delay(1000);

  if (digitalRead(switch_pin) == LOW) {
    digitalWrite(4,HIGH);
    delay(5000);
    digitalWrite(4,LOW);
  } else {
digitalWrite(4, HIGH);
delay(100);
digitalWrite(4, LOW);
delay(100);
digitalWrite(4, HIGH);
delay(100);
digitalWrite(4, LOW);
 }


float umidade = dht_1.readHumidity();
float temperatura = dht_1.readTemperature();
if (isnan(temperatura) or isnan(umidade)) 
{
Serial.println("Erro ao ler o DHT");
} 
else
{
  Serial.print("Umidade: ");
Serial.print(umidade);
Serial.print(";");
Serial.print(" Temperatura: ");
Serial.print(temperatura);
Serial.print(";");
}

leitura_lm35 = analogRead(A2);
temperatura = leitura_lm35 * (5.0/1023) * 100;
Serial.print(temperatura);
Serial.print(";");

}