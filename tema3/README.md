# Todo:  
* Momentan, operațiile permise sunt PIPO și SISO.
# Highlights:  
* Bistabilii sunt instanțiați într-un modul top care leagă so (serial output) al fiecărui bistabil la si (serial input) al următorului
* Sunt folosite semnalele enable, readps și writeps pentru a comunica dacă se actualizează registrele și de la ce intrare la ce ieșire
* Spre exemplu, enable = 0 înseamnă că se memorează starea anterioară, readps = 0 înseamnă citire în paralel, iar writeps = 0 scriere în paralel
# Formele de undă:  
![PIPO](https://github.com/rarescolibaba/verilog/assets/72991062/3fc67412-5833-4073-9da9-7d1fb8dc0baa)
![SISO](https://github.com/rarescolibaba/verilog/assets/72991062/7901c1b2-cb54-4080-870f-5206b8697ae1)
![SIPO (parțial)](https://github.com/rarescolibaba/verilog/assets/72991062/5fe08453-5204-41cc-a5b8-e031d47f2546)
