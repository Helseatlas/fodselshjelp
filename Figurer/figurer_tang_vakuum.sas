/* Global variables */
%let tema=tang_vakuum;
%let agg_var=tang_vak;
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
%let labeltabell=&tabellvar1="Instr. fødsel" &tabellvar2="Fødsler";
%let xlabel=Antall pr. 1 000  førstegangsfødende som fødte vaginalt.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*** Lager datasett for Instant Atlas *****/

/*tang_vakuum_p0*/
%Let beskrivelse=tang_vakuum_p0_rate;
data helseatl.IA_FH_&beskrivelse;
  set &tema_navn._IJUST_bohf (keep = bohf rateSnitt &tema_navn innbyggere rename=(rateSnitt=Rate &tema_navn=Antall)); 

BoHF_Navn=vvalue(BoHF);
Gruppe = 2;
Niva =29;

numeric = "numeric";
Tom_rad = "";
Tom_rute = "";
run;

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
%let labeltabell=&tabellvar1="Instr. fødsel" &tabellvar2="Fødsler";
%let xlabel=Antall pr. 1 000  flergangsfødende som fødte vaginalt.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*** Lager datasett for Instant Atlas *****/

/*tang_vakuum_p1*/
%Let beskrivelse=tang_vakuum_p1_rate;
data helseatl.IA_FH_&beskrivelse;
  set &tema_navn._IJUST_bohf (keep = bohf rateSnitt &tema_navn innbyggere rename=(rateSnitt=Rate &tema_navn=Antall)); 

BoHF_Navn=vvalue(BoHF);
Gruppe = 2;
Niva =30;

numeric = "numeric";
Tom_rad = "";
Tom_rute = "";
run;

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
%let labeltabell=&tabellvar1="Instr. fødsel" &tabellvar2="Fødsler";
%let xlabel=Antall pr. 1 000 fødsler, Robsongruppe 1.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=png);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*** Lager datasett for Instant Atlas *****/

/*tang_vakuum_r1*/
%Let beskrivelse=tang_vakuum_r1_rate;
data helseatl.IA_FH_&beskrivelse;
  set &tema_navn._IJUST_bohf (keep = bohf rateSnitt &tema_navn innbyggere rename=(rateSnitt=Rate &tema_navn=Antall)); 

BoHF_Navn=vvalue(BoHF);
Gruppe = 2;
Niva =17;

numeric = "numeric";
Tom_rad = "";
Tom_rute = "";
run;

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
%let labeltabell=&tabellvar1="&tema" &tabellvar2="vag førstegangsfødende";
%let xlabel=Antall pr. 1 000  førstegangsfødende.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=png);

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
%let labeltabell=&tabellvar1="Instr. fødsel" &tabellvar2="Fødsler";
%let xlabel=Antall pr. 1 000 fødsler, Robsongruppe 3.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=png);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*** Lager datasett for Instant Atlas *****/

/*tang_vakuum_r3*/
%Let beskrivelse=tang_vakuum_r3_rate;
data helseatl.IA_FH_&beskrivelse;
  set &tema_navn._IJUST_bohf (keep = bohf rateSnitt &tema_navn innbyggere rename=(rateSnitt=Rate &tema_navn=Antall)); 

BoHF_Navn=vvalue(BoHF);
Gruppe = 2;
Niva =18;

numeric = "numeric";
Tom_rad = "";
Tom_rute = "";
run;

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
%let labeltabell=&tabellvar1="&tema" &tabellvar2="vag flergangsfødende";
%let xlabel=Antall pr. 1 000  flergangsfødende.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=png);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*****************/
/*** ROBSON 9, par0 ***/
/*****************/

%let par_rob=robson;
%let grp=90;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="førstegangsfødende";
%let xlabel=Antall pr. 1 000  førstegangsfødende.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=png);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

/*****************/
/*** ROBSON 9, par1 ***/
/*****************/

%let par_rob=robson;
%let grp=91;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let fignavn=;
%let tittel=;
%let rv1=&tema_navn;
%let type=&par_rob.&grp; 
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="flergangsfødende";
%let xlabel=Antall pr. 1 000  flergangsfødende.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=png);

%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._IJUST_bohf, bildeformat=pdf);

%let mappe_png=Figurer\png;
%let mappe_pdf=Figurer\pdf;


/*SAMMENSATT FIGUR, TANG OG VAKUUM, PARITET 0*/

%let dsn1=vakp0_IJUST_bohf;
%let rv1=vakp0;

%let dsn2=tangp0_IJUST_bohf;
%let rv2=tangp0;

%merge(ant_datasett=2, dsn_ut=&tema._delt_p0_bohf); 


%let fignavn=;
%let type=p0;
%let tittel=;
%let xlabel=Antall pr. 1 000  førstegangsfødende som fødte vaginalt.;
%let label_1=Vakuum;
%let label_2=Tang;
%let tabellvar1=tot_antall;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Instr. fødsel" &tabellvar2="Fødsler" ;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;*values=(0 to 18 by 3);

%let mappe=&mappe_png;
%ratefig_todeltSoyle(datasett=&tema._delt_p0_bohf, bildeformat=png);


%let mappe=&mappe_pdf;
%ratefig_todeltSoyle(datasett=&tema._delt_p0_bohf, bildeformat=pdf );

/*SAMMENSATT FIGUR, TANG OG VAKUUM, PARITET 1*/

%let dsn1=vakp1_IJUST_bohf;
%let rv1=vakp1;

%let dsn2=tangp1_IJUST_bohf;
%let rv2=tangp1;

%merge(ant_datasett=2, dsn_ut=&tema._delt_p1_bohf); 


%let fignavn=;
%let type=p1;
%let tittel=;
%let xlabel=Antall pr. 1 000  flergangsfødende som fødte vaginalt.;
%let label_1=Vakuum;
%let label_2=Tang;
%let tabellvar1=tot_antall;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Instr. fødsel" &tabellvar2="Fødsler" ;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;*values=(0 to 18 by 3);

%let mappe=&mappe_png;
%ratefig_todeltSoyle(datasett=&tema._delt_p1_bohf, bildeformat=png);


%let mappe=&mappe_pdf;
%ratefig_todeltSoyle(datasett=&tema._delt_p1_bohf, bildeformat=pdf );


