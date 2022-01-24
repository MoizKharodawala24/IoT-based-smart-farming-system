/*#include <DHT.h>
 * #define DHTTYPE DHT11
 */
#include <ESP8266WiFi.h>
#include <ESPAsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include <FS.h>
#include <Wire.h>


char* ssid = "Muffadal villa"; //WIFI SSID
const char* password = "7d08c10c17974bc"; //WIFI PASSWORD
int Relay1 = 12; //D6 light switch
int Relay2 = 13; //D7 motor switch
const int ldr_pin = 5;//D1
int lights=0;
float h =0;
float t =0;
int soil = A0;
int val=0;

/*int dht = 2;
DHT DHT(dht, DHTTYPE);*/
AsyncWebServer server(80);

String getHum() {
    delay(500);
    /*float h = DHT.readHumidity();
    Serial.print("Humidity:");
    Serial.println(h);*/
    h=random(50,60);
    delay(500);
    return String(h);
}
String getTem() {
    delay(500);
    /*float t = DHT.readTemperature();
    Serial.print("Temperature:");
    Serial.println(t);*/
    t=random(30,40);
    delay(500);
    if(t>35){
      //digitalWrite(Relay2,HIGH);
      }
    else{
      //digitalWrite(Relay2,LOW);
      }
    return String(t);
    
}

String getLdr(){
    if( digitalRead( ldr_pin ) == 1){ 
      //Serial.println("Lights ON");
      lights=1;
      digitalWrite(Relay1,LOW);
      }
    else{ 
      //Serial.println("Lights OFF");
      lights=0;
      digitalWrite(Relay1,HIGH);
      } 
    //Serial.println(lights);
    return String(lights); 
    delay(500);
  }

String getMoisture(){
    val = analogRead(soil); 
    Serial.print("Analog Value : ");
    int moisture=map(val,1024,500,0,100);
    //Serial.println(moisture);
    if(moisture<40){
      Serial.print("Motor on");
      Serial.println("("+String(moisture)+"%)");
      digitalWrite(Relay2,LOW);
      }
    else if(moisture>70){
      Serial.print("Too much water(Motor off)");
      Serial.println("("+String(moisture)+"%)");
      digitalWrite(Relay2,HIGH);
      }
    else{
      Serial.print("Good amount");
      Serial.println("("+String(moisture)+"%)");
      digitalWrite(Relay2,LOW);
      }
    return String(moisture);
    delay(500);
  }
  
void setup () {
  Serial.begin (9600);
/*  DHT.begin();*/
  pinMode(ldr_pin,INPUT);
  pinMode(Relay1, OUTPUT); 
  pinMode(Relay2, OUTPUT); 
  if (!SPIFFS.begin ()) {
    Serial.println ("An Error has occurred while mounting SPIFFS");
    return;
  }

  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }

  // Print ESP32 Local IP Address
  Serial.println(WiFi.localIP());

  // Route for web page
  server.on ("/", HTTP_GET, [] (AsyncWebServerRequest * request) {
    request-> send (SPIFFS, "/index.html");
  });
  
  server.on ("/temp", HTTP_GET, [] (AsyncWebServerRequest * request) {
    request-> send_P (200, "text / plain", getTem().c_str());
  });
  server.on ("/hum", HTTP_GET, [] (AsyncWebServerRequest * request) {
    request-> send_P (200, "text / plain", getHum().c_str());
  });

  server.on ("/lights", HTTP_GET, [] (AsyncWebServerRequest * request) {
    request-> send_P (200, "text / plain", getLdr().c_str());
  });

  server.on ("/moisture", HTTP_GET, [] (AsyncWebServerRequest * request) {
    request-> send_P (200, "text / plain", getMoisture().c_str());
  });

  // start server
  server.begin ();
}
void loop() {
}
