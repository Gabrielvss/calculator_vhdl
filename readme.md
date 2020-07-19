# Calculadora de quatro Bits

Este projeto é referente a disiciplina de Sistemas Digitais do Deparatmento de Eng. Biomédica da Univercidade Federal do Rio Grande do Norte, todas as simulações e circuitos resultantes foram feitos no [Quartus II](https://www.intel.com/content/www/us/en/programmable/downloads/download-center.html).

Circuito Proposto:
<img src="assets/circuito.png">

Foi Proposta uma abordagem comportamental que utiliza vetores de quatro bits para entradas e saídas `(A, B e OUT)`, como também para a seleção do MUX `(S2, S1, S0)`, ja para controle do registro dos dado foi utilizado um bit `(ld)` para chaveamento entre gravação do dado atual ou entrada de um novo dado.

## Circuito Resultante

<img src="assets/rtl_viwer.png">

## Simulações

- `A e B` estão variando como um contador com um clock de 30ns
- `clk` é o clock do sistema com um valor 10 MHz
- `ld` possui alguns pulsos.
- `result` está variando como um contador com um clock de 40ns

<img src="assets/simulation.png">
