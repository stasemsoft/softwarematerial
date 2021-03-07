# Euro-Dollar Converter

## Doelen
 + Omgaan met verschillende typen (int, double, string).
 + Gebruik van variabelen. 
 + Converteren van typen.
  
## Inleiding 
Reisbureau “FLUX vakanties” organiseert rondreizen in landen van alle continenten. Veel van de geboekte reizen gaan naar landen waar niet met euro’s maar met dollars betaald moet worden. Om de reisvoorbereidingen voor klanten wat te vergemakkelijken wil FLUX vakanties daarom een applicatie laten ontwikkelen om euro’s gemakkelijk naar dollars om te kunnen rekenen en andersom. 
 
## Bronnen
Voorbeelden over het werken met variabelen in C#: zie 'Reference: variable'. 

## Opdracht 
De user interface is al ontworpen: 

![Aangeleverd ontwerp user interface](figures/euro-dollar-conv.png)

+ Bouw deze user interface. 
+ Zorg ervoor dat de koers per cent wordt opgehoogd/verlaagd als op de pijltjes omhoog/omlaag wordt geklikt (dit is een Property van de NumericUpDown), en stel de standaardwaarde in op 2,00 (of 2.00?). Controleer of het werkt door het project uit te voeren. 
+ Programmeer de functionaliteit achter de Button “<” en Button “>”: 
	+ Als op “>” wordt geklikt worden de Euro’s in de linker TextBox omgerekend naar dollars, en worden deze dollars in de rechter TextBox getoond. 
	+ Als op “<” wordt geklikt worden de dollars rechter TextBox omgerekend naar Euro’s, en worden deze Euro’s in de linker TextBox getoond. 
	+ In beide gevallen wordt de ingestelde koers gebruikt. 
	
	```
	Het is niet mogelijk om met variabelen van een tekst type te rekenen. Met variabelen van een getal type kan dit wel. Zorg er daarom voor dat je eerst de tekst in de tekstvakken om zet naar getallen. Je kunt hierna gemakkelijk de berekening uitvoeren en tot slot de uitkomst van de berekening weer omzetten naar tekst. 
	``` 
	
## Uitbreiding (niveau 3  van 5) 

Voeg een controle toe op de invoer van bedragen: als de invoer geldig is, moet de berekening worden uitgevoerd. Is de invoer niet geldig, dan wordt een duidelijke foutmelding getoond en wordt er niets berekend.

## Uitbreiding (niveau 4 van 5) 

Voeg de mogelijkheid toe om op een gebruikersvriendelijke manier te kunnen kiezen tussen twee vreemde valuta’s: Dollar of Yen. Er wordt wel altijd omgerekend van of naar Euro’s. De user interface moet hier uiteraard op aangepast worden. 

## Checklist 
Als je de opdracht op de juiste manier hebt uitgevoerd heb je voldaan aan onderstaande punten:
+ Vul bij koers 1,50 in, vul bij euro’s 3 in en druk op de “>” knop. Het aantal dollars zou nu 4,5 moeten worden.
+ Vul bij koers 1,50 in, vul bij dollars 2 in en druk op de “<” knop. Het aantal euros zou nu 1,333… moeten worden.
+ Controleer of de koers met centen kan worden verhoogd en verlaagd. 

Is alles in orde? Feedback vragen maar... 


## Versies 
+ Mei 2015 Marcel Veldhuijzen (KAL, standaard uitwerking verwijderd) 
+ 2014-01-10 Bas Michielsen (Template) 
+ 2014-01-09 Lindy Hutz (VS 2013) 
+ 2012 Sjaak Verwaaijen 
+ 2011 Tom Broumels

