# Training Auto Dagwaarde

| Niveau | 2 of 5 |
| --- | --- |
| Leerdoelen | Class, property. |
| Vereiste voorkennis | Basiskennis over objecten. |
| Challenge Type | Realiseren. |

---

Je bent als software engineer ingehuurd om een tool te programmeren waarmee de dagwaarde van auto’s kan worden bepaald. Deze dagwaarde mag in deze Challenge berekend met de formule

```
(500000/kilometerstand) * factor
```

maar kijk vooral ook op internet naar de echte berekening: misschien kom je op iets meer realistisch uit.
De factor is een waarde die afhankelijk is van het brandstoftype:
- 100 voor een benzine-auto is
- 150 voor een dieselauto is.
- 90 voor een LPG-auto is.
- 130 voor een elektrische auto.

Technisch Ontwerp
- Definieer een enum BrandstofSoort met bovenstaande waarden.
- Een class Auto met properties kilometerstand en Brandstof.
- Auto heeft een public property KmStand met beginwaarde 1 (private setter). (Enig idee waarom we niet bij 0 beginnen?).


- Auto heeft een read only property Kenteken (een String) die als parameter aan de constructor meegegeven wordt.
- Auto heeft een method RijdKilometers met als parameter een geheel getal.
- RijdKilometers controleert of de parameter een positief getal is. Zoja, dan wordt de KmStand met dat bedrag verhoogd.
- Auto heeft een property Brandstof van type BrandstofSoort. Deze wordt als parameter aan de constructor meegegeven.
- Class Auto heeft verder een read-only property Dagwaarde. Deze voert de berekening uit en geeft het goede antwoord terug.
- override de ToString() method van Auto zodat er iets komt te staan als AB-12-CD elektrische auto 12345 km op de teller heeft een dagwaarde van 12345 euro.

Maak een Console app of een GUI app (eigen keuze). Maak een List<Auto> aan met minstens 4 auto’s. Bij opstarten laat de app van elke auto de informatie zien (gebruik ToString()).

Laat daarna elke auto een willekeurige aantal kilometers tussen 1000 en 20000 rijden. Toon voor elke auto opnieuw de informatie. Herhaal dit een aantal keren totdat elke auto minstens 100000 kilometer gereden heeft.
