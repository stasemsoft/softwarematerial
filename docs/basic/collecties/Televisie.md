# Training - Array - Televisie

We gaan een televisieapplicatie maken. In deze televisieapplicatie moet je kunnen zien of de TV aan of uit staat en zien welke zenders bekeken kunnen worden. 


## Deel 1 - De televisie aan en uit
De eerste stap is om een form met twee radiobuttons met de waarde "aan" en "uit" (rbAan en rbOff) te maken. Daarnaast een picturebox met een televisie en daarboven op een label (tbStatus). Wanneer de radiobutton "aan" staat moet de label naar "Aan" gaan en wanneer de radiobutton "uit" staat moet de label naar "Uit" gaan. Deze status onthoud je ergens met een boolean.

![Deel 1](figures/Televisie-ui-deel-1.png)

## Deel 2 - Zenders toevoegen
Als je televisie kijkt is het belangrijk om te weten welke zenders je kunt bekijken. De televisie kan maximaal 100 zenders hebben. Omdat het maximale zenders vaststaat ga je gebruik maken van een array van strings. Hiervoor ga je een lege array aanmaken met ruimte voor 100 items. Zodoende heb je genoeg plek voor extra zenders in de toekomst. Hoe doe je dit?

```csharp
string[] zenders = new string[100];
```

Je kunt hier nu ook zenders aan toe voegen:
```csharp
string[] zenders = new string[100];
zenders[0] = "NPO1";
zenders[1] = "NPO2";
zenders[2] = "NPO3";
```
Je ziet dat er wordt begonnen op positie 0 (zenders[/0]). 

## Deel 3 - Zenders laten zien in een listbox
De volgende stap is om dit  te laten zien met een listbox in je applicatie. Gebruik het voorbeeld hieronder en voeg een listbox lbZenders toe en laat de zenders uit de array zien.

![Deel 2](figures/Televisie-ui-deel-2.png)

## Deel 4 - Zenders toevoegen via een textbox
Als je dit hebt gedaan is het nu tijd om er nog wat functionaliteit aan toe te voegen. De gebruiker van de applicatie moet zenders kunnen toevoegen. Hiervoor maak je eerst een  textbox (tbZender) en button (btToevoegen) aan. 

![Deel 3](figures/Televisie-ui-deel-3.png)

Daarna maak je de methode  **public void VoegZenderToe(string zender)** aan. Hiermee kun je een zender kunt toevoegen aan je array waar alle zenders in opgeslagen gaan worden. Denk na over hoe je ervoor zorgt dat de zender op de juiste positie in de array opgeslagen kan worden.

## Deel 5 - Zappen en huidige zender laten zien
Als dit is gelukt maak je nog twee extra buttons aan waarmee je een zender verder (btVerder) en terug (btTerug) kan "zappen" en een label (lbZender) waarin je laat zien op welke zender de televisie staat.

![Deel 4](figures/Televisie-ui-deel-4.png)

Maak **twee methodes** waarmee je een zender verder en terug kunt zappen. Het is handig om hiervoor een variabele int aan te maken die huidigeZender heet. Hier houd je bij welke zender er nu op staat. Maak ook een methode die **public string HaalHuidigeZenderOp()** heet. Deze laat de naam van de huidige zender zien.


### Uitbreiding
Maak nu de grafische kant van de applicatie waarin je bovenstaande functionaliteit aan de GUI gaat koppelen. Pak als televisieprogramma bijvoorbeeld een plaatje of zo. Elke zender laat een ander plaatje zien.
