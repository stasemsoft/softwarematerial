# Basiskennis C#

Links naar diverse naslag-hoofdstukken (voorheen bekend als OIS11-dictaat).

+ [Naslag variable](var/naslag_Variable.md)

+ [string methoden](string_methoden/naslag_StringMethods.md)

+ [int en double bewerkingen (operatoren)](var/naslag_Operatoren.md)

+ [Keuzestructuren in C#](conditioneel/naslag_Keuzestructuren.md)

+ [While statement](lussen/naslag_While.md)

+ [For statement](lussen/naslag_For.md)

+ [Methodes in C#](methoden/naslag_methods.md)

+ [Handige sneltoetsen en opties in Visual Studio](../process/knowVisualStudioShortCutKeys.md)



## Online C-sharp tutorials

### MSDN tutorial

+ [MSDN How do I Learn C# tutorials (Engelstalig)](http://msdn.microsoft.com/en-us/vcsharp/aa336766.aspx)

Bruikbaarheid:	*
Toelichting: 	Enkele gedetailleerde walkthroughs. Aanrader als je al bekend bent met programmeren in een andere programmeertaal.

### techzine tutorial

+ [Les 1: Beginnen met C# (Nederlandstalig)](http://www.techzine.nl/tutorials/358/3/c-les-1-beginnen-met-c-de-eerste-stapjes.html)

Bruikbaarheid:	****
Toelichting: 	Uitleg over het maken van een programma aan de hand van een voorbeeldprogramma dat telkens een stukje wordt uitgebreid. Het gebruik van variabelen, FOR en WHILE lus worden uitgelegd. Let op: in deze tutorial wordt een Console applicatie gemaakt.

### Webbrowser tutorial

+ [Zelf een webbrowser maken (Nederlandstalig)](http://www.sitemasters.be/tutorials/17/1/564/CSharp.NET/CSharp_Zelf_een_WebBrowser_maken)

Bruikbaarheid:	*
Toelichting: 	Tutorial waarin een webbrowser gebouwd wordt. Weinig toelichting op wat er gebeurt maar wel een leuk eindresultaat. Deze tutorial is vanaf lesweek 3 redelijk goed te maken.

### Blackwasp tutorial
+ [BlackWasp](http://www.blackwasp.co.uk/)
Bruikbaarheid:	***
Toelichting: 	Verzameling tutorials en artikelen (Engelstalig).

## Online C-sharp boeken

+ [C# Station Tutorial (Engelstalig)](http://csharp-station.com/)
Bruikbaarheid:	***
Toelichting: 	Uitleg over de basis onderdelen van C# zoals expressies, typen, variabelen en controlestructuren. De &quot;lessons&quot; 1 t/m 5 zijn interessant voor OIS.

+ [C# Yellow Book (Engelstalig)](http://www.robmiles.com/c-yellow-book/Rob%20Miles%20CSharp%20Yellow%20Book%202010.pdf)

Bruikbaarheid:	**
Toelichting: 	Compleet boek over programmer constructies en onderwerpen. Wellicht handig als naslagwerk, niet geschikt als leerboek voor OIS. Let op: in deze tutorial wordt uitgegaan van een Console applicatie als beginpunt, dit is iets anders dan een Form applicatie.

## Bruikbare technieken proftaak

### 3d objecten
Op Internet zijn aardige voorbeelden te vinden.

Probeer eerst deze uit:
+ [MSDN over XNA en 3D](http://msdn.microsoft.com/en-us/library/bb203897(v=xnagamestudio.31).aspx)

### WIIMote

Je kunt een softwarecomponent toevoegen om de Wiimote te gebruiken. Deze component is te vinden op het Internet  genaamd WiiMoteLib.dll
Hiervoor is er geen installatie nodig, maar je kunt met een rechtermuisklik op reference in het menuutje kiezen voor add reference. Hierna browse je naar de juiste file.

De *Wiimote* gaat communiceren met je applicatie via *Bluetooth*. Het instellen van Bluetooth kun je ook overal op het Internet vinden. Google: Wiimote Bluetooth
Ook zijn er verschillende testprogramma’s te vinden.

### XBOX 360
Bij de ISSD kun je ook een XBOX lenen om daar je XNA-applicatie op te draaien.
In de C#/XNA programma is een kleine aanpassing nodig om de applicatie geschikt te maken voor de XBOX.
Voer de volgende stappen uit om een game van je laptop naar de Xbox te porten:
+ Rechtermuisknop klikken op je windowsproject
+ Selecteer &quot;Create a Copy of Project for Xbox 360&quot;

Zie uitgebreider http://msdn.microsoft.com/en-us/library/bb976061.aspx
Even uitproberen. Je moet namelijk in een lan zitten, ook lid zijn van creatorclub enzo.
