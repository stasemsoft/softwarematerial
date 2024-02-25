# Explanation: Methods in C\# (CSharp)

### Algemene structuur methoden

Een methode is een stukje code dat vanuit een ander stukje code
is aan te roepen. Als een methode een waarde terug geeft
welke gebruikt gaat worden in het stukje code waar vanuit
deze is aangeroepen spreek je over een methode welke &quot;een waarde teruggeeft&quot;.
Ook kunnen aan een methode één of meer waarden worden meegegeven.
Dit worden argumenten genoemd.

### Belangrijkste voordelen van het gebruik van methoden:

1. Overzichtelijkheid: Als alle code in één enkele event handler (bijv. *ButtonX_Click*) wordt geplaatst wordt je code al snel erg overzichtelijk.
2. Werk verdelen: Als je voordat je gaat programmeren het programmeerwerk wilt verdelen kun je de te maken code opdelen in methoden en deze met verschillende programmeurs tegelijkertijd programmeren.
3. Onderhoudbaarheid &amp; herbruikbaarheid: Als je op verschillende plaatsen in je programma hetzelfde stuk code vaker uit wilt voeren kun je vanaf de verschillende plaatsen een methode aanroepen die je maar één keer hoeft te programmeren.  Dat scheelt code en is gemakkelijker te onderhouden dan dat je code verschillende keren in je programma kopiert en plakt.

Een methode heeft de volgende structuur:
```cs
private [returnType] [methodeNaam]([parameters])
{
  …
  [return returnWaarde]
}
```

<dl><dt>`private`</dt>
<dd>geeft aan dat de `methode` alleen binnen het huidige bestand (lees: `Form1`) kan worden aangeroepen. Wat dit precies inhoudt is voor dit vak niet interessant, hier wordt later op teruggekomen.</dd>
<dt>[returnType]</dt>
<dd>Het type van de waarde die de methode terug geeft. Als de methode geen waarde terug geeft, is dit `void` (*niets*). Voorbeelden: `int`, `double`, `bool`, `string`, `void`.</dd>
<dt>[methodeNaam]</dt>
<dd>Zelf gekozen naam voor de methode, te vergelijken met een zelf gekozen naam voor een variabele.	Voorbeelden: *TelOp*, *ToonMelding*, *Methode1*, *Abc*.</dd>
<dt>[parameters]</dt>
<dd>Optioneel onderdeel. Hiermee wordt opgegeven welk(e) type(n) waarde(n) moet worden meegegeven aan de methode en onder welke naam deze waarde binnen de method kunnen worden gebruikt. Meerdere parameters worden gescheiden met een &quot;,&quot;-teken.	Voorbeelden: `int deler`, `int getalA`, `int getalB`, `bool isIngelogd`, `double eenKommaGetal`.</dd>
<dt>[return returnWaarde]</dt>
<dd>Met `return`&quot; gevolgd door een waarde die aan het *[returnType]* voldoet wordt een waarde teruggegeven vanuit de methode aan het stukje code dat de methode heeft aangeroepen. Als *[returnType]* `void` is hoeft er geen return worden gebruikt. Voorbeelden: `return uitkomst;`, `return 10;`, `return mijnTekst;`, `return "Hallo"+" daar!";`, `return getal > 10;`</dd>
</dl>


### Voorbeelden Methoden

Een aantal voorbeeldmethoden:
```cs
    private int AddTwoNumbers(int number1, int number2)
    {
        int som;
        som = number1 + number2;
        return som;
    }

    private int SquareANumber(int number)
    {
        return number * number;
    }
```

Bovenstaande methoden zijn als volgt aan te roepen:
```cs
int sum = AddTwoNumbers(8765, 287);
```
of:
```cs
int kwadraat = SquareANumber(63);
```
of, beiden:
```cs
int total = SquareANumber(AddTwoNumbers(1, 2));
```

#### Tekst en uitleg (engelstalig) over methoden en parameters

Zie bijvoorbeeld
[C-sharpcorner over methods](http://www.c-sharpcorner.com/UploadFile/myoussef/CSharpMethodsP_111152005003025AM/CSharpMethodsP_1.aspx)
voor meer uitleg.
