# Training Calorieën-tracker

Voor je gezondheid is het belangrijk om in de gaten te houden hoeveel calorieën je dagelijks nodig hebt. Jouw taak is een applicatie te maken die uitrekent hoeveel calorieën de gebruiker dagelijks nodig heeft.

## Analyse
Je collega heeft een vooronderzoek uitgevoerd en de volgende informatie verzameld:

- Een vrouw heeft per dag gemiddeld 2.000 kilocalorieën (kcal) nodig. Voor de man is dat gemiddeld 2.500 kcal per dag (bron voedingscentrum).
- Maar als je een niet-actieve levensstijl hebt (als je minder dan 30 minuten per dag beweegt) dan heb je 10% minder calorieën nodig.
- En als je boven de 50 bent dan heb je 200 kilocalorieën minder nodig.

*Tip: je ziet in deze analyse twee keer het woord ALS staan. Dat worden in C# vermoedelijk if statements*

## Ontwerp
Het ontwerp voor de user interface is reeds gedaan. De gebruiker kan met een radiobutton zijn/haar geslacht en levensstijl aangeven, zijn/haar leeftijd invullen en op de knop
**Bereken** klikken. Nadat er op die knop is geklikt verschijnt de caloriebehoefte in beeld (hoe dat mag jij weten: met een messagebox of je voegt een label toe op het form).

![Aangeleverd ontwerp user interface](figures/Calorieen-tracker-ui.png)

## Realisatie
Programmeer de applicatie. Probeer van te voren een stappenplan te maken hoe je dit gaat aanpakken. Bijvoorbeeld:
1. Ik ga eerst het scherm (het form) maken met de groupboxen, radiobuttons, enz.
2. Dan programmeer ik eerst een applicatie die kijkt of iemand een man of vrouw is en laat ik als antwoord 2000 of 2500 zien.
3. Ik heb nu de uitkomst (2000 of 2500) in een variabele staan. Nu ga ik kijken naar de radiobuttons voor de levensstijl. Als (if-statement) hij **Niet Actief** kiest dan haal ik 10% van de uitkomst af. En ik laat dan die uitkomst zien.
4. Nu ga ik kijken wat zijn leeftijd is. Ik haal de leeftijd op uit de textbox en zet die in een variable. Als dat hoger is dan 50 dan trek ik nog eens 200 af van de uitkomst.

*Tip: het voordeel van dit stappenplan is dat je vanaf stap 2 elke keer een werkende applicatie hebt.*

Je hebt nu een werkende applicatie en kunt deze bij de klant opleveren.

## Onderhoud
Na een half jaar komt de klant terug en wil hij een aantal nieuwe features aan je applicatie toegevoegd zien.
- Als de leeftijd van de gebruiker kleiner is dan 12 dan moet het aantal calorieën nog eens met 180 vermindert worden.
- Zwangere vrouwen in de leeftijd tot en met 30 jaar hebben 2600 calorieën nodig en zwangere vrouwen boven de 30 hebben 2500 calorieën nodig. Zorg ervoor dat de gebruiker kan invullen of ze zwanger is of niet en pas de berekening aan.
- Testen: test of je met jouw applicatie ook een zwangere man kunt zijn. Zo niet, dan heb je dat goed geprogrammeerd.