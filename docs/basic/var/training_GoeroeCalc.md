# Training Goeroe-calc: variabelen, bewerkingen en conversies: Een Console app(lication)

(Concepten: int, double, bewerkingen en conversies)

## Voorbereiding

Ken je het verschil tussen een int, double en string?

## Inleiding

We gaan een werkende calculator maken. Het is een minimalistische calculator, maar hij kan zaken voor je uitrekenen die je zelf niet kunt. Hoeveel is 655 maal 23623? De meeste mensen gebruiken daar liever een programma voor. Jij kunt dat programma maken.

## Opdracht

We vragen de gebruiker om een getal in te typen (en op enter te drukken), nog een getal (weer enter), dan vertellen we de gebruiker hoeveel je krijgt als je de getallen optelt, maar ook hoeveel je krijgt als je de getallen vermenigvuldigt. 


### Enkele stappen uitgelegd...

- Maak een Console app aan en geef die voor de onderhoudbaarheid een duidelijke naam, zoals bijvoorbeeld 'Calculator'.
- Met het commando `Console.WriteLine("bloemkool")` kun je de letterlijke tekst
  tussen de dubbele quotes (`"`) aan gebruiker laten zien. Vraag de gebruiker om een getal in te typen. 
- Na ieder commando (ook wel `statement` genaamd) wil C# graag een punt-komma
  `;` zien. 
- Een `Console.ReadLine()` wacht totdat de gebruiker iets intypt en daarna op
  `enter` drukt. Door een variabele van type `String` aan te maken met
  bijvoorbeeld de naam `textTypedByUser` en dan een toekenning (`assignment`) te
  gebruiken (in C# te herkennen aan het `=`-teken) wordt de tekst die door de
  user werd ingetypt in die variabele opgeslagen. 
- De eerste keer dat je een nieuwe variabele gebruikt noemen we de
  `declaratie`: je moet dan het `type' er voor zetten. Daarna moet dat juist
  niet meer: zo weet C# wanneer je een nieuwe variabele aan maakt en wanneer
  niet. 
- Let op: als je een tekst op het scherm zet gebruik je de taal (NL?) waarmee
  het programma met de gebruiker interacteert, maar voor variabelennamen wordt
  bijna altijd Engels gebruikt. 
- Een `String` is een keten van karakters. Om ermee te gaan rekenen moeten we C#
  vertellen dat we de waarde willen omzetten (converteren) naar een `int` (voor
  een geheel getal, ook wel `integer` genoemd). Dat doen we door de `methode`
  `Convert.ToInt32()` aan te roepen en tussen de haakjes de waarde mee te geven
  die we willen converteren. Het resultaat (dat we aan een variabele van type
  `int` kunnen assignen) is een integer getal: `int numberTypedByUser =
  Convert.ToInt32(textTypedByUser);`.  
- Om de waarden van twee bestaande integer variabelen `a` en `b` op te tellen kunnen we een
  nieuwe integer `int c;` maken en daar de waarde van `a + b` aan assignen. 
- Tot slot moeten we de `integer` waarde weer terug converteren naar een String
  om het op het scherm te zetten. 

Hier C#-code die de boven besproken concepten laat zien: 
  

```cs
Console.WriteLine("Beste gebruiker,");
Console.WriteLine("Typ een getal svp (en druk op enter)");

String textTypedByUser = Console.ReadLine();
Console.WriteLine("U hebt ingetypt: "+ textTypedByUser);

int numberTypedByUser = Convert.ToInt32(textTypedByUser);

int a = 42;
int b = 365;
int c = a + b;

String antwoord = Convert.ToString(c);
Console.WriteLine(antwoord);
```

Het is mogelijk dit korter op te schrijven, maar hou dan in de gaten of het
leesbaar blijft! 

Met deze kennis is het mogelijk de eerdergenoemde calculator te maken: 
De gebruiker kan integers intypen. Je kunt er bijvoorbeeld voor kiezen de
gebruiker te vertellen zowel wat de som als het product van de getallen is. 


Is het gelukt? Dan heb je nu zelf een programma geschreven dat meer kan dan jijzelf (binnen een milliseconde de getallen 7225 en 5588 met elkaar vermenigvuldigen bijvoorbeeld) en heb je de eerste stap gezet om een ervaren software engineer te worden.

Zit je vast? Stel een vraag aan je buurman of -vrouw! Als jullie er samen niet uitkomen vraag je het aan je docent. In het begin kan dit programmeren best moeilijk zijn.

Als de calculator werkt dan kun je nog de laatste 2 requirements programmeren. Dat zijn deze:
+ De uitkomst wordt getoond als “Uitkomst: 123”, dus met de tekst "Uitkomst: " voor de daadwerkelijke uitkomst.
+ De calculator moet werken met gebroken getallen. Dus 3.14 maal 2.0 moet 6.28 opleveren. Je moet dan in plaats van `int` `double` gebruiken. 

Misschien had je die al, dan ben je niet alleen goed in programmeren, maar heb je de analyse-fase ook eervol doorlopen.

Bespreek opdrachten regelmatig met je docent en voer dan feedback in in Feedpulse.

## Extra’s

Om het echt goed te leren is het goed om uitbreidingen op de opdrachten te maken, en hier ook feedback op te vragen. Dat kan leiden tot een hogere beoordeling (let op: je moet het wel zelf kunnen programmeren, code-kopie van internet is niet voldoende). Enkele mogelijke uitbreidingen:

+ Breid de calculator uit met een functie voor worteltrekken (hint: square root
  in het Engels, dat helpt bij het gebruik van een zoekkmachine).
+ Als de uitkomst onder de nul is laat je dit duidelijk zien, bijvoorbeeld door
  er achter de tekst 'LET OP: is negatief' te zetten.
+ Breidt de calculator uit met een functie voor delen. Zorg ervoor dat delen door 0 netjes wordt afgevangen en laat een nette foutmelding zien.
