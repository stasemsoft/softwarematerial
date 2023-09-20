# Casus: Bank

| | |
|---|---|
| Leerdoelen | constructor, this, static | 
| Vereiste voorkennis | Basisbegrip class, object | 
| Challenge Type | Workshop, Realiseren, Samenwerken | 



In deze opdracht maak je een toepassing voor een bank. Voor de duidelijk: een financiële, met bankrekeningen, waar klanten hun geld veilig weten. 

Met deze toepassing kan men:
- **Geld storten** op een bankrekening. De gebruiker kan alleen een positief bedrag storten. Bij een poging iets anders te storten dan positieve getallen wordt de transactie niet uitgevoerd en wordt een foutmelding gegeven. 
- **Geld opnemen** van een rekening. De gebruiker wil geld opnemen. Let op: er mogen alleen positieve bedragen overgemaakt worden! Indien er een negatief saldo zou ontstaan, of als er iets anders ingevuld is dan positieve getallen wordt de transactie niet uitgevoerd en wordt een foutmelding gegeven door middel van een MessageBox.
- **Geld overboeken** van links naar rechts (of van rechts naar links). In de TextBoxes links (rechts) vul je het over te maken bedrag in daarna klik je op de Button &gt;&gt;  (&lt;&lt;).  Indien er een negatief saldo zou ontstaan bij de betalende partij, of als er iets anders ingevuld is dan positieve getallen wordt de transactie niet uitgevoerd en wordt een foutmelding gegeven door middel van een MessageBox.
Het weergegeven saldo wordt na iedere transactie natuurlijk netjes aangepast.

## Opdracht

Let op: om aan te tonen dat je met Objecten kunt programmeren is het belangrijk dat je niet alleen een opdracht als deze 'braaf uitvoert', maar dat je ook zelf verzint hoe je uitbreidingen op je programma kunt maken. Aan het einde van dit document begint de challenge dus pas echt!  

Stel je voert deze opdracht uit in C#. Het kan dan als Console, als WinForms, als WPF, als UWP doen, of helemaal zonder UI (user interface) en dan unit tests gebruiken om aan te tonen dat ie werkt. 

### Stap 1: Bezint eer ge begint! 

Wat komt er eerst? Je kunt een ontwikkeling als deze van tenminste twee kanten aanpakken: je kunt `Top Down` werken of `Bottom Up`, hieronder korte beschrijvingen van beide. Lees ze en kies wat je het liefst bij dit project zou willen doen. 

#### Top Down 

Bij `Top Down` begin je dan wellicht met een schets van hoe een scherm er uit zou kunnen zien. Daar praat je dan over met je klant en met potentiële gebruikers. Maak een schets op een whiteboard en praat hierover met je medestudenten: is dit duidelijk voor een gebruiker? 


Als daar consensus over is wordt die GUI in een ontwikkelomgeving (IDE: Integrated Development Environment) gebouwd. Van daaruit wordt gekeken welke `classes` er nodig zijn en bijvoorbeeld welke `methodes` en `properties` er zijn. 

Om te kunnen zien wat onze 
Maak een nieuw Windows Forms project aan dat je bijvoorbeeld Bankzaken noemt. Geef het automatisch aangemaakte formulier Form1 een meer betekenisvolle naam, bijvoorbeeld BankrekeningForm. Pas ook de Property Text van het formulier aan zodat er een betere naam in de titelbalk van de applicatie komt te staan.

#### Bottom Up 


### STAP 2: De (Grafische) User Interface

Sleep de benodigde componenten op het formulier. Het hoeft niet precies zoals in het voorbeeld staat, maar bedenk wel vooraf hoe je de vereiste functionaliteit koppelt aan de componenten. Geef de componenten een betekenisvolle naam bijvoorbeeld btnStortenLinks en txtEuroRechts.


### STAP 3: DE KLASSE BANKREKENING
Voeg een nieuwe klasse toe en noem deze Bankrekening. Elke bankrekening heeft een rekeningnummer, staat op naam van een persoon en heeft een saldo. Zorg er voor dat de klasse Bankrekening-Fields heeft om de benodigde gegevens op te slaan en verder de volgende velden heeft:

```cs
// Fields
private int rekeningnummer;
private string naam;
private int saldo; // het saldo in hele centen
private static int volgendeVrijeRekeningnummer = 2001;
```

### Properties
Programmeer de volgende attributen als properties:
- Rekeningnummer (type int)
- Naam (type string)
- Saldo (type int)

```cs
// Methods
public void NeemOp(int bedrag)
{
    // bedrag in hele centen, negatieve bedragen worden genegeerd.
    // vul zelf in
}

public void Stort(int bedrag)
{
    // bedrag in hele centen, negatieve bedragen worden genegeerd.
    // vul zelf in
}

public void MaakOver(Bankrekening andereRekening, int bedrag)
{
    // bedrag in hele centen, negatieve bedragen worden genegeerd.
    // vul zelf in
}
```

Maak de implementatie van de methodes waarbij “vul zelf in” staat, zelf af.

### Static variabele

Merk op dat er `static` staat voor de variabele volgendeVrijeRekeningNummer en dat deze variabele op 2001 wordt geïnitialiseerd. Dat er static staat betekent dat dit een zogenaamde klassenvariabele is. Een klassenvariabele bestaat al voordat er een instantie gemaakt is van de klasse en wordt bij het opstarten van de applicatie geïnitialiseerd en dus niet pas bij het instantiëren (aanmaken) van het object van die klasse, zoals normale variabelen. Het voordeel van een klassevariabele is dat deze voor alle instanties van deze klasse dezelfde waarde heeft. Dezelfde klassevariabele wordt dus door alle instanties van deze klasse gebruikt.
Elke nieuwe bankrekening moet natuurlijk een uniek rekeningnummer hebben. Bij deze bank zijn dat de nummers vanaf 2001. De eerste bankrekening, die gecreëerd wordt, krijgt rekeningnummer 2001, de volgende rekeningnummer 2002, etc. Het bepalen van het volgende vrije rekeningnummer gebeurt in de Constructor.

### Constructors

Een Constructor is een speciale methode met dezelfde naam als de klasse die wordt uitgevoerd als een object van die aangemaakt wordt en dient om de Fields of Properties van de klasse te initialiseren. We hebben twee Constructors nodig. Een om een Bankrekening aan te maken als de naam van de rekeninghouder bekend is en het beginsaldo 0 en een voor het geval dat er wel sprake is van een beginsaldo, bijvoorbeeld als onderdeel van een wervingsactie van de bank.

```cs
// Constructors
public Bankrekening(string naam)
{
    this.naam = naam;
    saldo = 0;
    rekeningnummer = volgendeVrijeRekeningnummer;

    // we hogen het volgende vrije rekeningnummer met 1 op zodat de
    // volgende bankrekening een nummer krijgt dat 1 hoger is dan
    // deze bankrekening.
    ++volgendeVrijeRekeningnummer;
}

public Bankrekening(string naam, int saldo)
{
    // vul zelf in
}
```


Het is in veel C# teams gebruikelijk om de Contructors na de Properties en voor de Methoden te zetten.

### STAP 4: DE KLASSE BANKREKENINGFORM
Declareer binnen de BankrekeningForm twee Fields, voor de 2 bankrekeningen. Initialiseer deze twee Fields vervolgens in de Constructor van het formulier.

```cs
public partial class BankrekeningForm : Form
{
    // Fields
    private Bankrekening bankrekeningLinks;
    private Bankrekening bankrekeningRechts;

    // Constructor
    public BankrekeningForm()
    {
        InitializeComponent();
        bankrekeningLinks = new Bankrekening("Duck, Dagobert");
        bankrekeningRechts = new Bankrekening("Gans, Gijs");
    }
```

Maak nu de EventHandlers voor de knoppen aan. Weet je het nog? Door dubbel te klikken op de Button in het ontwerpscherm, wordt de standaard EventHandler (Click) automatisch aangemaakt. Vul de EventHandlers voor alle Buttons nu in om de gevraagde functionaliteit en de foutafhandeling te realiseren. Gebruik daarbij de methoden van de klasse Bankrekening die je al gemaakt hebt. Controleer op geldige invoer en vergeet ook niet de Labels met saldoinformatie bij te werken. Je kunt hiervoor de methode ToString gebruiken, waarbij je opgeeft dat je het saldo als valuta wilt.
<p class="note">Als je wilt dat een numerieke waarde als valuta weergeven wordt dan kun je daarvoor de methode `ToString()` gebruiken. Je geeft dan als parameter een hoofdletter C mee om aan te duiden dat het currency (valuta) is:</p>

```cs
double saldo = 120.55;
lblSaldo.Text = saldo.ToString(“C”);
```


 
Test als je klaar bent of alle functies en de foutafhandeling goed werken. Gebruik hiervoor ook de lijst van gewenste functionaliteit op de eerste pagina’s van deze opdracht.

#### TryParse
Als je wilt controleren of een ingetypte tekst een geheel getal is, kun je gebruik maken van onderstaande methode.

```cs
bool int.TryParse(string text, out int result);
```

Zoals je ziet is bij de declaratie van de tweede parameter out vermeld. Dit betekent dat deze methode de waarde van result mag aanpassen. Bij het aanroepen van de methode moet ook out vermeld worden. De waarde van de parameter result kan na het aanroepen van TryParse veranderd zijn. Als true wordt teruggegeven, bevat tekst een heel getal en heeft result de waarde. Zo niet, dan is er iets anders ingegeven dan een geheel getal en bevat result geen geldige waarde. Let op: een negatief geheel getal is ook een geheel getal.

```cs
if (int.TryParse(txtEuroLinks.Text, out getal))
{
    // de invoer in txtEuroLinks is een geheel getal en
    // de waarde zit nu in de variabele ‘getal’.
}
```

Zie MSDN voor meer informatie.

## Und jetzt gehts los! 

Vrij vertaald: Vanaf mag jij helemaal los gaan! Tot zover was het een trainingsopdracht, waarmee je de basiskennis en -vaardigheden op kon doen. Vanaf hier komt de mogelijkheid om te laten zien dat je OOP beheerst. 

Hier volgen een aantal voorbeelden van extra fuctionaliteiten waarmee je je bank kunt uitbreiden. 

### 

Toon een lijst van `transacties` op het scherm waarin de transacties worden weergegeven onder vermelding van datum, tijd, betrokken rekeningnummer(s) en bedrag. Naar keuze geef je alleen geslaagde of zowel geslaagde als niet geslaagde transacties weer. In het laatste geval wordt er tevens vermeld of de transactie geslaagd is of niet.



