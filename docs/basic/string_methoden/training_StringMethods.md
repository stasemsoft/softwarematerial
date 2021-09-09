# String-methoden 
## Inleiding 
In deze opdracht werk je met string-methoden. Je gebruikt die methoden om informatie uit een stuk tekst te filteren, een stuk tekst te bewerken en te bepalen waar een bepaald woord zich in de tekst bevindt. 

+ Leerdoel 1: Je kunt vanuit een gegeven specificatie een klein C#-programma schrijven met de stringmethoden IndexOf, Replace en Substring. Je kent alle varianten van deze string-functies. 
+ Leerdoel 2: je kunt werken met meerdere projecten in een solution. 
+ Leerdoel 3: je kunt zelfstandig property’s van user interface componenten een waarde geven in C#. 

## Voorbereiding 
Maak een Windows Forms-applicatie in Visual Studio met een form met daarop een Textbox, een Button en een Label. Lees het OIS-dictaat door en bestuur de theorie van de string-methoden (ook wel string-functies genoemd) IndexOf, Replace en Substring. 

## Opdrachten 
### Opdracht 1 - Index van 'e' 

```
User requirement: 
De gebruiker typt (in de Textbox) een willekeurige tekst in. Hierna klikt de gebruiker op de knop. Het programma toont vervolgens in het label de (eerste) index van de letter “e”. Het programma laat in het label -1 zien indien de letter e niet voorkomt in de ingevoerde tekst. 
```

Programmeer de bovenstaande user requirement. 

### Opdracht 2 - Haxor 
Maak een tweede project aan binnen je solution en zet op het form weer een Textbox, een Label en een Button. 

```
User requirement: de gebruiker typt een willekeurige tekst in en drukt op de knop. Het programma toont vervolgens de ingevoerde tekst in het label in de zogenaamde haxor-notatie. 
```

Programmeer deze user requirement. 

**Haxor-notatie**: 
+ Elke letter a wordt vervangen door een 4. 
+ Elke letter s wordt vervangen door een 5. 
+ Elke letter e wordt vervangen door een 3. 
+ De letters v en V wordt vervangen door \\/ . 
+ De letters m en M worden vervangen door \|V\|. 


### Opdracht 3 – Hallo jij! 
Maak een derde project aan binnen je solution en zet op het form een Textbox, twee Radiobuttons en een Button. Een Radiobutton krijgt de tekst “Man” en de andere Radiobutton krijgt als tekst “Vrouw”. 

```
User requirement: de gebruiker typt zijn voor- en achternaam in. Bijvoorbeeld “Marietje Jansen”. En vinkt een radiobutton aan met zijn geslacht (bijvoorbeeld “Vrouw”). Het programma toont vervolgens een MessageBox met de tekst “Hallo mejuffrouw Jansen” of “Hallo mijnheer Jansen”, afhankelijk van de ingevoerde tekst en geselecteerde radiobutton. 
```

Let op de requirements: 
1. De gebruiker voert Voornaam + Achternaam in, maar de MessageBox toont de tekst zonder de voornaam. 
2. Invoer als “Jan de Graaf” en radiobutton geslacht “Man“ levert het bericht “Hallo mijnheer de Graaf” op. 


### Extra opdrachten 
Te makkelijk of heb je nog meer oefening nodig? Maak dan deze extra’s. 

1. Breidt opdracht 1 uit zodat het geheel “case insensitive” wordt. Dus een e of een E in de ingevoerde tekst zal hetzelfde resultaat opleveren. 
2. Breidt opdracht 2 uit zodat een Haxor tekst omgezet kan worden naar een leesbare tekst. Hiervoor voeg je een Checkbox toe waarmee de gebruiker kan aangeven of hij van tekst- >Haxor of van Haxor->tekst wil converteren. 
3. Breid opdracht 3 uit zodat hij bij invoer als “Jan de Graaf” de tekst “Hallo mijnheer Graaf, de” laat zien door gebruik te maken van de string-methode LastIndexOf. Breidt opdracht 3 uit zodat invoer als “ jan janssen “ (met veel spaties aan het begin, aan het eind en er tussen) nog steeds werkt. Dus uitvoer is “Hallo mijnheer Janssen” (zonder extra spaties). 

(19 mei 2015 bedacht door Marcel Veldhuijzen)
