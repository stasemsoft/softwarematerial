# Training - Worpengenerator

In veel bordspellen (of digitale varianten hiervan) worden worpen gedaan met meerdere dobbelstenen (in het bijzonder bij spellen als Yahtzee, Risk, etc.) 

Indien je geen dobbelstenen voor handen hebt of je een digitale variant van een spel aan het programmeren bent, komt een programma waarmee een x aantal dobbelstenen met y aantal ogen gegooid kan worden goed van pas.

# Opdracht
Het programma dat je aan het eind van deze opdracht hebt gemaakt is ziet er als volgt uit:

![Userinterface Worpengenerator](figures/Worpengenerator-ui.png)

### Deel 1
Maak een nieuw C# Windows Forms-project aan. Maak een user interface welke er als hieronder uitziet (dit is een vereenvoudigde vorm van het eindresultaat, we gaan nog even uit van dobbelstenen met 6 ogen). De kaders (Instellingen en Resultaten) zijn **GroupBox** objecten. Hiermee kun je een aantal GUI-objecten die bij elkaar horen als groepje bij elkaar zetten en later, mocht het nodig zijn, bijv. als geheel verplaatsen. Het is het handigste om de **GroupBox**\-en eerst aan te maken zodat je de andere objecten hier op kunt zetten. Het witte uitvoer vlak is een **ListBox**.
- Geef de Button, NumericUpDown, ListBox, Labels en GroupBox\-en duidelijke namen. 
- Zorg dat het aantal worpen dat gekozen mag worden minimaal 1 is en maximaal 1000. 
- Maak de EventHandler aan voor klikken op de Button “Gooi dobbelstenen!”. 
- Zorg dat als eerste de ListBox wordt leeggemaakt. Doe dit door de Items.Clear() methode aan te roepen van de ListBox. Dus: als je ListBox als naam mijnListBox heeft gaat dit zo: mijnListBox.Items.Clear() 
- In de EventHandler moet vervolgens de code komen te staan waardoor “aantal worpen” keer een willekeurig getal van 1 t/m 6 wordt toegevoegd aan de ListBox. Maak deze code.

![Userinterface Worpengenerator deel 1](figures/Worpengenerator-ui-deel-1.png)

- *Tip 1: Begin klein door eerst maar één worp uit te voeren en te tonen, dan kun je de code daarna gemakkelijker uitbreiden door een herhaling (for lus of while lus) toe te voegen.*
- *Tip 2: Aan een ListBox kun je een regel toevoegen door gebruik te maken van de methode Items.Add(). Dus voor de ListBox met de naam mijnListBox gaat het toevoegen van het getal tien zo: mijnListBox.Items.Add(10);*
- *Tip 3: Maak aan het begin van de EventHandler één keer een dobbelsteenobject aan en gooi hiermee “aantal worpen” keer. Dit voorkomt het telkens dezelfde hoeveelheid ogen gooien.*
- *Tip 4: Test of het programma goed werkt door veel dobbelstenen te gooien en te kijken of hierin alleen de waarden 1 t/m 6 voorkomen.*


### Deel 2
Breid de user interface uit met twee **Label** objecten zoals hieronder. De ene bevat de tekst “Totaal aantal ogen:”, de andere bevat de standaard waarde “0” en zal straks het totaal aantal ogen voor de worp bevatten. Geef de **Label** objecten duidelijke namen.

![Userinterface Worpengenerator deel 2](figures/Worpengenerator-ui-deel-2.png)

Zorg dat in de EventHandler van de Button de code wordt toegevoegd waarmee het totaal aantal gegooide ogen wordt bijgehouden. Maak hiervoor gebruik van een “totaalOgen” variabele van het type int.

- *Tip 1: Als je een variabele binnen een for of while lus aanmaakt dan wordt deze tijdens elke herhaling aangemaakt en op het einde van de herhaling weer opgeruimd (dus voor iedere worp van iedere dobbelsteen wordt de variabele aangemaakt en weer weggegooid). Als je een variabele aanmaakt buiten, dus vlak voor een for of while lus, dan blijft deze variabele gedurende de uitvoering van de gehele for of while lus bestaan en te benaderen vanuit de for of while lus.*
- *Tip 2: Als je totaalOgen variabele na het uitvoeren van de for of while lus altijd precies de waarde heeft van de laatste worp, dan heb je heel waarschijnlijk één van de volgende fouten gemaakt:
	- Je hoogt de variabele totaalOgen niet op maar overschrijft deze met het aantal gegooide ogen.
	- Je hebt de totaalOgen variabele niet buiten de for of while lus gedeclareerd (aangemaakt), zie de tip hierboven voor wat je daaraan kunt doen.*
- *Tip 3: Test of het totaal aantal ogen juist wordt opgeteld door dit zelf na te tellen voor een aantal verschillende worpen, met telkens een andere hoeveelheid dobbelstenen.*