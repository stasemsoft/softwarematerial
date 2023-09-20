# Training Traffic Light

We gaan verkeerslichten (in de volksmond ook wel stoplichten genoemd) programmeren.
Nu is het nog een vrij recht-toe-recht-aan variant,
maar na theorie in latere hoofdstukken wordt het uitgebreid.
Bewaar dus de code die je maakt!

## Analyse

Voor we beginnen code te typen denken we eerst altijd na wat we willen bereiken:
- De opdrachtgever eist dat de code in het Engels is.
- Ik wil de mogelijkheid hebben meerdere `objecten` van type *TrafficLight* te maken, maar ik wil het maar 1 keer programmeren.
- Een *TrafficLight* kan de kleuren (*toestanden*) 'groen', 'oranje', 'rood' hebben: gebruik voor deze toestanden Engelse benamingen.
- Voor de veiligheid wordt de toestand bij het maken van een TrafficLight altijd op *rood* gezet.
- Vanuit *rood* kan de toestand alleen *groen* worden, dan *oranje*, dan weer *rood*.


## Ontwerp
- Een `Console`-project aan genaamd *Traffic*.
- Een `class` *TrafficLight*.
- Deze class heeft een `private` `Field` *color* van type *String*
- Initiële waarde van *color*: *Red*
- De class krijgt een `method` *NextState()* die het TrafficLight de volgende waarde van *color* geeft.
- We willen aan een TrafficLight ook kunnen opvragen wat de huidige kleur is: `public String GetCurrentColor()`

## Realisatie
- Maak de in het het ontwerp genoemde zaken aan.
- De `method` *NextState* geeft de kleur **na** het veranderen van de kleur terug: `public String NextState() {...}`

Een Console app heeft een *main*-method (`public static void Main(string [] args)`)
waarin je code kunt zetten als:

```cs
TrafficLight trafficLight = new TrafficLight();
// color has to be "Red".
Console.WriteLine(trafficLight.GetCurrentcolor());
trafficLight.NextState();
// color has to be "green".
Console.WriteLine(trafficLight.GetCurrentColor());
trafficLight.NextState();
// color has to be "oranje".
Console.WriteLine(trafficLight.GetCurentColor());
trafficLight.NextState();
// and 'red' again!
Console.WriteLine(trafficLight.GetCurentColor());
```

Bovenstaande code is wat slordig in elkaar gezet: kijk goed of er geen fouten in staan!
Verbeter ze zonodig en test het programma uit.
Kun je verbeteringen op het programma bedenken?
