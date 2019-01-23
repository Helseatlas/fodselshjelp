/*ENKEL RATEFIGUR, ALLE KONSULTASJONER*/

%let tema=svkontakt;
%let rv1=&tema._tot;

%let fignavn=;
%let type=kons;
%let tittel=Antall polikliniske konsultasjoner i svangerskapet pr f�dsel. Aldersstandardiserte rater. Gjennomsnitt for perioden 2015-17.;
%let xlabel= Polikliniske konsultasjoner i svangerskapet pr. f�dsel. Aldersjusterte rater.;
%let tabellvar1=&tema._tot;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Konsultasjoner" &tabellvar2="F�dsler";
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema._tot_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema._tot_bohf, bildeformat=pdf);












