/* Global variables */
%let tema=ks_akutt;
%let agg_var=ks_akutt;
%let nevner=alle;


/* Figurer */

/*****************/
/*** PARITET 0 ***/
/*****************/

%let par_rob=paritet;
%let grp=0;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let rv1=&tema_navn;
%let type=&par_rob.&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Keisersnitt" &tabellvar2="F�dsler";
%let xlabel=Antall pr. 1 000 f�rstegangsf�dende.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);



/*****************/
/*** PARITET 1 ***/
/*****************/


%let par_rob=paritet;
%let grp=1;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let rv1=&tema_navn;
%let type=&par_rob.&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="Keisersnitt" &tabellvar2="F�dsler";
%let xlabel=Antall pr. 1 000 flergangsf�dende.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;


%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;


%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);


/*TODELTE FIGURER*/

%let tema=ks;


/*SAMMENSATT FIGUR, AKUTT+ELEKTIVT, PARITET 0*/

%let dsn1=ks_akuttp0_IJUST_bohf;
%let rv1=ks_akuttp0;

%let dsn2=ks_planlagtp0_IJUST_bohf;
%let rv2=ks_planlagtp0;

%merge(ant_datasett=2, dsn_ut=ks_delt_p0_bohf); 


%let fignavn=;
%let type=p0;
%let tittel=;
%let xlabel=Antall pr. 1 000  f�rstegangsf�dende.;
%let label_1=Akutt;
%let label_2=Planlagt;
%let tabellvar1=tot_antall;
*%let tabellvar2=antall_2;
%let tabellvariable= &tabellvar1;* &tabellvar2;
%let labeltabell=&tabellvar1="Keisersnitt";* &tabellvar2="Hyst." ;
%let formattabell=&tabellvar1 NLnum8.0;* &tabellvar2 NLnum8.0;
%let skala=;*values=(0 to 18 by 3);

%let mappe=&mappe_png;
%ratefig_todeltSoyle(datasett=ks_delt_p0_bohf);


%let mappe=&mappe_pdf;
%ratefig_todeltSoyle(datasett=ks_delt_p0_bohf, bildeformat=pdf );


/*SAMMENSATT FIGUR, AKUTT+ELEKTIVT, PARITET 1*/

%let dsn1=ks_akuttp1_IJUST_bohf;
%let rv1=ks_akuttp1;

%let dsn2=ks_planlagtp1_IJUST_bohf;
%let rv2=ks_planlagtp1;

%merge(ant_datasett=2, dsn_ut=ks_delt_p1_bohf); 


%let fignavn=;
%let type=p1;
%let tittel=;
%let xlabel=Antall pr. 1 000  f�rstegangsf�dende.;
%let label_1=Akutt;
%let label_2=Planlagt;
%let tabellvar1=tot_antall;
*%let tabellvar2=antall_2;
%let tabellvariable= &tabellvar1;* &tabellvar2;
%let labeltabell=&tabellvar1="Keisersnitt";* &tabellvar2="Hyst." ;
%let formattabell=&tabellvar1 NLnum8.0;* &tabellvar2 NLnum8.0;
%let skala=;*values=(0 to 18 by 3);

%let mappe=&mappe_png;
%ratefig_todeltSoyle(datasett=ks_delt_p1_bohf);


%let mappe=&mappe_pdf;
%ratefig_todeltSoyle(datasett=ks_delt_p1_bohf, bildeformat=pdf );


















%let tema=ks_akutt;



/*ROBSON*/



%let mappe_png=Figurer\png\ROBSON;
%let mappe_pdf=Figurer\pdf\ROBSON;


/*****************/
/*** ROBSON  1 ***/
/*****************/


%let par_rob=robson;
%let grp=1;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let rv1=&tema_navn;
%let type=&par_rob.&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="Alle f�rstegangsf�dende";
%let xlabel=&tema., pr. 1 000 f�rstegangsf�dende spontan.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;


%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;


%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);

/*****************/
/*** ROBSON  2 ***/
/*****************/

%let par_rob=robson;
%let grp=2;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let rv1=&tema_navn;
%let type=&par_rob.&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="Alle f�rstegangsf�dende";
%let xlabel=&tema., pr. 1 000 f�rstegangsf�dende igangsatt.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);

/*****************/
/*** ROBSON  3 ***/
/*****************/


%let par_rob=robson;
%let grp=3;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let rv1=&tema_navn;
%let type=&par_rob.&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="Alle flergangsf�dende";
%let xlabel=&tema., pr. 1 000 flergangsf�dende spontan.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;


%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;


%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);

/*****************/
/*** ROBSON  4 ***/
/*****************/

%let par_rob=robson;
%let grp=4;
%let tema_navn=%sysfunc(cat(&tema,%substr(&par_rob,1,1),&grp));

%let rv1=&tema_navn;
%let type=&par_rob.&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="Alle flergangsf�dende";
%let xlabel=&tema., pr. 1 000 flergangsf�dende igangsatt.;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;

%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);


/*
%let just=Just;
%let fignavn=&just;
%let tittel=&tema_navn &just;

%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017);



%let just=Ujust;
%let fignavn=&just;
%let tittel=&tema_navn &just;

%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017);
*/

%let mappe_png=Figurer\png;
%let mappe_pdf=Figurer\pdf;