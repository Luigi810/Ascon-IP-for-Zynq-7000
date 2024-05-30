# Ascon IP for Zynq 7000
 An HDL implementation of the Ascon algorithm using the official C reference implementation. Part of a project for Embedded Systems Exam, more reference on [naplespu.com/es](http://www.naplespu.com/es/index.php?title=Implementazione_HLS_di_un_acceleratore_hardware_di_cifratura/decifratura_mediante_l%27algoritmo_Ascon#Ascon) (need credentials to have access).

## Codice:
Codice soluzione 1: Ascon-IP-for-Zynq-7000/VitisHLS/EsperimentiVitisHLS/source_8bit/

Codice soluzione 2: Ascon-IP-for-Zynq-7000/VitisHLS/EsperimentiVitisHLS/source_64bit/

Codice soluzione 3: Ascon-IP-for-Zynq-7000/VitisHLS/EsperimentiVitisHLS/source/


## Obiettivo primario
Questo progetto nasce dal tentativo di migliorare la legibilità del codice, utilizzare il protocollo AXI Full invece che AXI lite in quanto più adatto per la trasmissione di dati più corposi di 32 bit e migliorare le performance della IP presentata nel [articolo di documentazione](http://www.naplespu.com/es/index.php?title=Implementazione_HLS_di_un_acceleratore_hardware_di_cifratura/decifratura_mediante_l%27algoritmo_Ascon#Ascon), in particolare si cerca di usare in un primo momento le seguenti direttive per migliorare le performance in termini di latenza a discapito di una maggiore occupazione in termini di risorse Hardware su FPGA. Le seguenti direttive servono a ottimizzare il codice come descritto:


\#pragma HLS PIPELINE: Utilizzato nei loop per aumentare il throughput riducendo la latenza.

\#pragma HLS DATAFLOW: Utilizzato per parallelizzare diverse fasi di elaborazione.

\#pragma HLS UNROLL: Espande le iterazioni di un loop per creare più istanze hardware.

\#pragma HLS INLINE: Forza l'inlining di una funzione.

\#pragma HLS ARRAY_PARTITION: Partiziona un array per permettere accessi paralleli(consente accessi paralleli agli array).

\#pragma HLS RESOURCE permette di specificare l'uso delle risorse hardware per ottimizzare l'implementazione.



## Come aggiungere l'IP al catalogo di Vivado
Dopo aver eseguito i test necessari nel testbench previsto sul codice C si può eseguire il comando Run Syntesis. Una volta valutate che le performance soddisfino le proprie esigenze (performance relative alle 3 soluzioni in RefactoringImages) si può passare ad esportare l'IP da VitisHLS con File->Export che genererà un archivio zip Export.zip che costituisce il blocco della IP specificata come top level function in Project Settings-> Syntesis.

Dopodichè bisogna estrarre l'archivio in una cartella con nome appropriato (bisogna farlo sia per la funzione axi\_encrypt sia per axi\_dectrypt).

## Aggiunta al catalogo Vivado
Per aggiungere l'ip al catalogo in vivado si va su Tools->Settings-> IP-> Repository-> + (Add Repository) e si aggiungono le cartelle dove erano state esportate le IP generate con Vitis HLS.

## Block Design
Dopo aver generato il Block disgn si può generare il platform file del progetto.

Per usare la funzionalità Create HDL Wrapper in vivado si usa tasto destro sul block design (file .bd nella cartella Design Sources). 
Poi eseguendo Generate Bitstream otteniamo il platform file (XSA) che poi andremo ad esportare (File->Export->Export Hardware (include bitstream)). Una volta ottenuto il Platform File .xsa lo potremo aprire in Vitis. 

## Programmazione PS

### Creazione Platform project
In Vitis dopo aver aperto un workspace creiamo un nuovo platform project per ottenere alla fine il nostro .xpfm, quindi selezionamo il nostro xsa di partenza con browse e selezioniamo come OS una standalone application (a meno che non serva un OS per altre elaborazioni, in tal caso agire di conseguenza).

### Creazione Application Project (Standalone application)
Dopo aver creato la zynq platform su vitis, creiamo un nuovo application project (utile partire dal template Hello world per avere i file per l'inizializazione della scheda e main.c autogenerati) e selezioniamo la nostra Piattaforma custom. Abbiamo ora nella cartella Applicatio/Sources/src un linker script, un file di inizializazione platform.c e un file in cui è contenuto il nostro main() (hello_world.c). Useremo la funzione main per inizializzare ed usare le nostre IP servendoci delle funzioni AXI ad esse relative automaticamente generate da VITIS.


Dettagli sulle interfacce AXI per le ip in C:\Path\To\Vitis\Platform\Project\platformAscon\zynq_fsbl\zynq_fsbl_bsp\hw_artifacts\drivers


Application Project path : C:\Path\To\Vitis\Application\Project\Vitis\ApplicationAscon_FromTemplateHelloWorld\src

## Versioni 
| Numero versione relativo alle immagini  | Source Dir   | IP | 
|-----------------------------------------|--------------|----|
|       1                                 | source_8bit  | 1  |
|       2                                 |              |    |
|       3                                 |              |    |
|       4                                 |              |    |
|       5                                 | source_64bit | 2  |
|       6                                 | source       | 3  |


La soluzione più semplice e facile da leggere è quella relativa alla IP 1. Possiamo ottimizzare l'ip facendo la raccolta di dati su vettori uint64_t e poi convertendoli in vettori uint8_t(2). Questa raccolta può essere fatta anche in parallelo(1).


