/* Global variables */
%let tema=episiotomi;
%let agg_var=episiotomi;
%let nevner=vag;

/* Figurer */

/*****************/
/*** PARITET 0 ***/
/*****************/

%let par_rob=paritet;
%let grp=0;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Klipping" &tabellvar2="F�dsler";
%let xlabel=Antall pr. 1 000  f�rstegangsf�dende med vaginal forl�sning.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*****************/
/*** PARITET 1 ***/
/*****************/

%let par_rob=paritet;
%let grp=1;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Klipping" &tabellvar2="F�dsler";
%let xlabel=Antall pr. 1 000  flergangsf�dende med vaginal forl�sning.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

%let mappe_png=Figurer\png\ROBSON;
%let mappe_pdf=Figurer\pdf\ROBSON;

/*****************/
/*** ROBSON 1 ***/
/*****************/

%let par_rob=robson;
%let grp=1;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="vag f�rstegangsf�dsler";
%let xlabel=Antall pr. 1 000  f�rstegangsf�dsler.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*****************/
/*** ROBSON 2 ***/
/*****************/

%let par_rob=robson;
%let grp=2;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="vag f�rstegangsf�dsler";
%let xlabel=Antall pr. 1 000  f�rstegangsf�dsler.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*** ROBSON 3 ***/
/*****************/

%let par_rob=robson;
%let grp=3;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="vag flergangsf�dsler";
%let xlabel=Antall pr. 1 000  flergangsf�dsler.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*****************/
/*** ROBSON 4 ***/
/*****************/

%let par_rob=robson;
%let grp=4;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="vag flergangsf�dsler";
%let xlabel=Antall pr. 1 000  flergangsf�dsler.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

%let mappe_png=Figurer\png;
%let mappe_pdf=Figurer\pdf;