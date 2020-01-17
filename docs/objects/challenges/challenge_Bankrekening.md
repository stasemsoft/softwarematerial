# Challenge Bankrekening

| Niveau | ![](figures/niveau3.png "niveau") |
| --- | --- |
| Leerdoelen | Class, constructor, object, this, static. |
| Vereiste voorkennis | Basiskennis over objecten. |
| Challenge Type | Realiseren. |



In deze opdracht maak je een toepassing die een sterk vereenvoudigde bank met twee bankrekeningen voorstelt.

Met deze toepassing kan men:
- Geld storten op de rekening links of rechts. In de TextBoxes vul je het bedrag in, vervolgens klik je op de Button “Storten”. Alleen een positief bedrag kan gestort worden. Indien er een negatief saldo zou ontstaan, of als er iets anders ingevuld is dan positieve getallen wordt de transactie niet uitgevoerd en wordt een foutmelding gegeven door middel van een MessageBox.
- Geld opnemen van de rekening links of rechts. In de TextBoxes vul je het bedrag in, vervolgens klik je op de Button “Opnemen”. Indien er een negatief saldo zou ontstaan, of als er iets anders ingevuld is dan positieve getallen wordt de transactie niet uitgevoerd en wordt een foutmelding gegeven door middel van een MessageBox.
- Geld overboeken van links naar rechts (of van rechts naar links). In de TextBoxes links (rechts) vul je het over te maken bedrag in daarna klik je op de Button &gt;&gt;  (&lt;&lt;).  Indien er een negatief saldo zou ontstaan bij de betalende partij, of als er iets anders ingevuld is dan positieve getallen wordt de transactie niet uitgevoerd en wordt een foutmelding gegeven door middel van een MessageBox.
Het weergegeven saldo wordt na iedere transactie natuurlijk netjes aangepast.

## Opdracht

In de oorspronkelijke opdracht werd uitgegaan van WinForms, je kunt het ook in (bijvoorbeeld) UWP doen: lees verderop in deze opdracht.

### STAP 1: HET FORMULIER

Maak een nieuw Windows Forms project aan dat je bijvoorbeeld Bankzaken noemt. Geef het automatisch aangemaakte formulier Form1 een meer betekenisvolle naam, bijvoorbeeld BankrekeningForm. Pas ook de Property Text van het formulier aan zodat er een betere naam in de titelbalk van de applicatie komt te staan.

### STAP 2: DE GUI

Sleep de benodigde componenten op het formulier. Het hoeft niet precies zoals in het voorbeeld staat, maar bedenk wel vooraf hoe je de vereiste functionaliteit koppelt aan de componenten. Geef de componenten een betekenisvolle naam bijvoorbeeld btnStortenLinks en txtEuroRechts.
 #### STAP 3: DE KLASSE BANKREKENING
Voeg een nieuwe klasse toe en noem deze Bankrekening. Elke bankrekening heeft een rekeningnummer, staat op naam van een persoon en heeft een saldo. Zorg er voor dat de klasse Bankrekening-Fields heeft om de benodigde gegevens op te slaan en verder de volgende velden heeft:

```
// Fields
private int rekeningnummer;
private string naam;
private int saldo; // het saldo in hele centen
private static int volgendeVrijeRekeningnummer = 2001;
```

### Properties
Programmeer de volgende attributen als READ ONLY (!) property's:
- Rekeningnummer (type int)
- Naam (type string)
- Saldo (type int)

```
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

```
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
```
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
<p class="note">Als je wilt dat een numerieke waarde als valuta weergeven wordt dan kun je daarvoor de methode `ToString()` gebruiken. Je geeft dan als parameter een hoofdletter C mee om aan te duiden dat het currency (valuta) is:</p>```
double saldo = 120.55;
lblSaldo.Text = saldo.ToString(“C”);
```


 
Test als je klaar bent of alle functies en de foutafhandeling goed werken. Gebruik hiervoor ook de lijst van gewenste functionaliteit op de eerste pagina’s van deze opdracht.
#### TryParse
Als je wilt controleren of een ingetypte tekst een geheel getal is, kun je gebruik maken van onderstaande methode.
```
bool int.TryParse(string text, out int result);
```

Zoals je ziet is bij de declaratie van de tweede parameter out vermeld. Dit betekent dat deze methode de waarde van result mag aanpassen. Bij het aanroepen van de methode moet ook out vermeld worden. De waarde van de parameter result kan na het aanroepen van TryParse veranderd zijn. Als true wordt teruggegeven, bevat tekst een heel getal en heeft result de waarde. Zo niet, dan is er iets anders ingegeven dan een geheel getal en bevat result geen geldige waarde. Let op: een negatief geheel getal is ook een geheel getal.

```
if (int.TryParse(txtEuroLinks.Text, out getal))
{
    // de invoer in txtEuroLinks is een geheel getal en
    // de waarde zit nu in de variabele ‘getal’.
}
```

Zie MSDN voor meer informatie.

## Uitbreidingen

![](figures/niveau3.png)


Voeg een ListBox op het scherm waarin de transacties worden weergegeven onder vermelding van datum, tijd, betrokken rekeningnummer(s) en bedrag. Naar keuze geef je alleen geslaagde of zowel geslaagde als niet geslaagde transacties weer. In het laatste geval wordt er tevens vermeld of de transactie geslaagd is of niet.


## UWP
```
File -> New -> Project -> Windows Universal -> Blank Universal App.
```

Maak je bankrekening in deze `UWP App`. Kopieer en plak je Bankrekening c# `class` in je nieuwe UWP app. Dus je gebruikt je al eerder gemaakte class van die WinForms opdracht.
Als je de bankrekening class &quot;goed&quot; gemaakt hebt dan zit er geen referenties in naar methodes en dingen die niet meer bestaan en hoef je alleen de `buttons` en `labels` te slepen.
Je komt er achter dat niet alles een naam heeft en dingen zoals `MessageBox.Show` niet meer bestaan in `UWP`.
