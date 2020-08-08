# Catracas
Aplicação Elipse E3 utilizada para Prova de Conceito POC, de um equipamento que comunica BacNET

Basicamente realiza a leitura de dois sinais, processa se houve uma entrada ou saída e registra em banco de dados SQL Server.

Tem um PRJ com driver ABDF1 que não faz parte do domínio E3, esse PRJ foi usado apenas para disparar comandos de um CLP simulador de sinais de catraca.

Durante o desenvolvimento desta aplicação, percebeu-se que o DateDiff do VBScript não processa milisegundos, e isso foi necessário. Através pesquisas na Internet, adaptamos um código existe em um XOBject e o código tem a capacidade de calcular diferenças de tempo levando em consideração milisegundos.



Elipse E3 application used for Proof of Concept POC, of a device that communicates BacNET

Basically it performs the reading of two signals, processes if there was an entry or exit and records it in a SQL Server database.

It has a PRJ with an ABDF1 driver that is not part of the E3 domain, this PRJ was used only to trigger commands from a PLC ratchet signal simulator.

During the development of this application, it was realized that VBScript's DateDiff does not process milliseconds, and this was necessary. Through Internet searches, we adapt a code that exists in an XOBject and the code has the ability to calculate time differences taking milliseconds into account.

