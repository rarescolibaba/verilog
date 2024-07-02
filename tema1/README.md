# Highlights:  
* Două seturi de simulare, behav și struct
* Testbenchul are același conținut pentru ambele cazuri
* Muxurile au două intrări de N biți (N fiind parametrizabil)
* Testbenchul are două instanțe (un mux cu intrări de 8 biți și unul cu intrări de 32)
* Muxul Nbit structural este alcătuit din N muxuri cu intrări pe 1 bit
* Muxul 1bit structural este alcătuit din porțile primitive Verilog **not**, **and**, **or**
* Muxul Nbit behavioral conține un simplu assign cu operator ternar în funcție de selecție
# Forme de undă:
![tb_struct](https://github.com/rarescolibaba/verilog/assets/72991062/83b1b740-0e3b-49bd-b5f0-7c2d44a49626)
![tb_behav](https://github.com/rarescolibaba/verilog/assets/72991062/ead79f5c-5ef0-4c4c-9ea9-bb54dd57b1e8)
