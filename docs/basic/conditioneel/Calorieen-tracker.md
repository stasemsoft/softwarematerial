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

!\[User interface\](figures/Calorieen-tracker-ui.png)


