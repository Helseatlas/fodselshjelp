
%let tema=blod15;
%let agg_var=blodning;
%let nevner=alle;  


/*****************/
/*** VAGINALE  ***/
/*****************/

%let par_rob=paritet;
%let grp=vag;
%let tema_navn=%sysfunc(cat(&tema,&grp,&nevner));

%let rv1=&tema_navn;
%let type=&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="alle f�dsler";
%let xlabel=Antall vaginal med bl�dning 1500ml+, pr. 1 000 f�dsler;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;


%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;


%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);

/********************/
/*** KEISERSNITT  ***/
/********************/


%let par_rob=paritet;
%let grp=ks;
%let tema_navn=%sysfunc(cat(&tema,&grp,&nevner));

%let rv1=&tema_navn;
%let type=&grp; /*Angir populasjon/nevner*/
%let tabellvar1=&tema_navn;
%let tabellvar2=Innbyggere;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="&tema" &tabellvar2="alle f�dsler";
%let xlabel=Antall keisersnitt med bl�dning 1500ml+, pr. 1 000 f�dsler;
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;


%let just=Ijust;
%let fignavn=&just;
%let tittel=&tema_navn &just;


%let mappe=&mappe_png;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=png);
%let mappe=&mappe_pdf;
%ratefig(datasett=&tema_navn._&just._bohf, aar1=2015, aar2=2016, aar3=2017, bildeformat=pdf);


/**************************************/
/* Lag figur todelt VAG / KS          */
/**************************************/

%let tema=blod15;

%let dsn1=&tema.VAGalle_ijust_bohf;
%let rv1=&tema.VAGalle;


%let dsn2=&tema.KSalle_ijust_bohf;
%let rv2=&tema.KSalle;

%merge(ant_datasett=2, dsn_ut=&tema._vag_ks_bohf); 

%let fignavn=vagks;
%let type=;
%let tittel=Bl�dning 1500ml+;
%let xlabel= Antall bl�dning 1500ml+ pr. 1 000 f�dsler;
%let label_1=vag;
%let label_2=ks;
%let tabellvar1=antall_1;
%let tabellvar2=antall_2;
%let tabellvariable= &tabellvar1 &tabellvar2;
%let labeltabell=&tabellvar1="vaginale" &tabellvar2="keisersnitt";
%let formattabell=&tabellvar1 NLnum8.0 &tabellvar2 NLnum8.0;
%let skala=;

%let mappe=&mappe_png;
%ratefig_todeltSoyle(datasett=&tema._vag_ks_bohf);

%let mappe=&mappe_pdf;
%ratefig_todeltSoyle(datasett=&tema._vag_ks_bohf, bildeformat=pdf );