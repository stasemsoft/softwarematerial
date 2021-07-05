# Challenge Vier-op-een-rij
	   
| Leerdoelen | Class, method, constructor, object, private, enum. |
| --- | --- |
| Extra | Algoritme, |
| Vereiste voorkennis | Kennis over objecten, Method, If. |
| Challenge Type | Programming. |



 
## Vier op een rij

### Analyse, Design, Realisatie

Ideaal als je de Analyse (Wat moet het product doen?) en het Design (Hoe gaat het product dat doen?) op een whiteboard kunt doen waar je met een groepje mensen bij gaat staan. Praat er over welke _classes_ je nodig denkt te hebben als je **Vier** **op** **een** **Rij** gaat programmeren. Probeer **samen** tot een goed eindresultaat te komen. 

Als je alle _classes_ hebt bedacht, bedenk dán hoe je die classes precies zou noemen: schrijf die namen op. Denk er aan dat ook de _huidige_ _toestand_ van het spel in objecten opgeslagen moet zijn.

Let op het volgende: 
+ Een ***class name***  begint met en ***Hoofdletter*** en is ***enkelvoud***: dus `class Student`, niet `class Studenten`. 
+ In een samengestelde naam begint elk nieuw woord met een _hoofdletter_, dus
	+ `KameelBult`
	+ `StudentResult`
	+ `ChessBoard`


Maak het spel 4 op een rij waarbij je tegen de computer kunt spelen.
Houd rekening met onderstaande eisen:


+ Programmeer class *Zet* met twee `integer` `properties` Rij en Kolom
(de property  Rij is read-only, deze wordt uitgerekend omdat de stenen naar beneden vallen). De constructor accepteert een referentie naar klasse Spel (zie hieronder) en een integer-kolom. 
Een enum Veld met mogelijke waarden Rood en Geel.

```cs
enum Veld {Rood,Geel}
```

+ Klasse Spel met intern een private array van 6 bij 7 (tweedimensionaal array)

```cs
Veld[] bord:
bord = new Veld[6,7];
```

+ Het is bij voorkeur een console-applicatie. Het speelbord hoeft niet te worden afgedrukt. Mag wel, maar dan met `Console.WriteLine`s (loop dan door het array heen en druk het stap voor stap af). 
+ De klasse Spel heeft methoden als `BedenkEenZet()` om de beste zet voor de computer te bedenken en `AccepteerEenZet(Zet z)` (om een zet van de gebruiker te accepteren). 
+ De methode `BedenkEenZet()` kan in eerste instantie op zoek gaan naar de eerste de beste vrije kolom. Indien er geen vrije kolom meer is dan kan de methode `GelijkSpel()` worden aangeroepen die het spel stopt. Maak private hulpmethoden zoals bool `HeeftSpelerGewonnen()` en `bool HeeftComputerGewonnen()` die je zelf aanroept. 

```cs 
private Random Randje;

public Zet BedenkEenZet()
{
   return new Zet(Randje.Next(7));
}
```
