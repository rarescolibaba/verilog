# Highlights:  
* Două seturi de simulare, behav și struct
* Testbenchul are același conținut pentru ambele cazuri
* Muxurile au două intrări de N biți (N fiind parametrizabil)
* Testbenchul are două instanțe (un mux cu intrări de 8 biți și unul cu intrări de 32)
* Muxul Nbit structural este alcătuit din N muxuri cu intrări pe 1 bit
* Muxul 1bit structural este alcătuit din porțile primitive Verilog **not**, **and**, **or**
* Muxul Nbit behavioral conține un simplu assign cu operator ternar în funcție de selecție
# Forme de undă:
![tb_struct](https://github.com/rarescolibaba/verilog/assets/72991062/bbc04203-842a-4459-900f-ce9d237062b4)
![tb_behav](https://github.com/rarescolibaba/verilog/assets/72991062/acea2bd7-eaf9-4858-9705-1382ea9f0d3f)
