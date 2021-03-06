# Naslag basiskennis: Keuzestructuren in C#

Als een stukje code soms wel en soms niet moet worden uitgevoerd,
dan heb je een `if` of `if … else` `statement` nodig.
Moet een stukje code soms één keer en soms vaker worden herhaald,
dan heb je een `for` of `while` `statement` nodig.

### if-statement

Deze structuur wordt gebruikt om een stukje code uit te voeren
afhankelijk van een bepaalde situatie (de `conditie` genoemd).
Algemene vorm:

```cs
if ([conditie])
{
  [Uit te voeren code als conditie waar is]
}
```

waarbij `conditie` is een stelling die de waarde
`true` (*waar*) of `false` (*niet waar*) heeft.

Voorbeelden van condities:

| Conditie | Betekenis |
| --- | --- |
| true | Waar |
| false | Niet waar |
| i > 5 | Is i groter dan 5? |
| i < 7 | Is i kleiner dan 7? |
| i >= 1 | Is i groter of gelijk aan 1? |
| i <= 2 | Is i kleiner of gelijk aan 2? |
| i  == 3 | Is i precies gelijk aan 3? |
| i  != 3 | Is i ongelijk aan 3? |
| stukjeText == "abcde" | Is stukjeText precies gelijk aan "abcde"? |
| stukjeText < "abcde" | Komt stukjeText eerder in het alphabet dan "abcde"? |
| etc. |  |


Verder staat *[Uit te voeren code als conditie waar is]* voor
een stukje code (dit kunnen meerdere regels code zijn)
dat moet worden uitgevoerd als de conditie `true` (*waar*) is.
Als precies één regel code moet worden uitgevoerd zou je ervoor
kunnen kiezen de accolades openen en sluiten weg te laten,
maar dit maakt de kans op bugs een stuk groter,
dus dat raden we af.

### if … else … statement

Een if statement kan uitgebreid worden met een &quot;else&quot; blok. Als de conditie niet &quot;waar&quot; oplevert dan wordt de code in het else blok uitgevoerd.
Algemene vorm:
```cs
if ([conditie])
{
[Uit te voeren code als conditie waar is]
}
else
{
 [Uit te voeren code als conditie niet waar is]
}
```

Merk op: of de conditie nu wel of niet waar is, altijd wordt één van de twee stukjes code uit-ge-voerd.

### Voorbeelden "if …" statement en "if … else …" statement

```cs
if (true)
{
	TextBox1.Text = "test";
}
```

Het stukje code tussen { en } wordt altijd uitgevoerd,
dus de `Text` van de *TextBox* wordt altijd &quot;test&quot; gemaakt.
```cs
if (false)
{
	TextBox1.Text = "test";
}
```

Het stukje code tussen { en } wordt nooit uitgevoerd.
```cs
bool b = true;
if (b)
{
	TextBox1.Text = "test";
}
```

Als `b` de waarde `true` (= *waar*)
heeft wordt de `Text` in de *TextBox* &quot;test&quot;  gemaakt.
Dit is hier nu altijd het geval omdat in dit stukje code
aan variabele `b` alleen de waarde &quot;true&quot; wordt toegekend.
```cs
int i = 10;
if (i < 5)
{
  i  = i + 1;
}
```

Als getal `i` kleiner dan 5 is,
dan wordt bij de waarde van `i` één opgeteld,
anders gebeurt er niets.
```cs
TextBox1.Text = "test2";
if (TextBox1.Text !=  "test")
{
  TextBox1.Text = "test3";
}
```

Als de tekst in de textbox niet gelijk is aan &quot;test&quot; (dat is hier het geval) dan wordt de tekst van de textbox veranderd in &quot;test3&quot;.
```cs
if (true)
{
	TextBox1.Text = "test";
}
else
{
	TextBox1.Text = "test2";
}
```

Het stukje code tussen de eerste { en } wordt altijd uitgevoerd,
dus de `Text` van de `TextBox` wordt altijd &quot;test&quot; gemaakt.
Het stukje code tussen de tweede { en } wordt nooit uitgevoerd.
```cs
int i = 5;
if (i >= 10)
{
  i  = i + 1;
}
else
{
  i = i + 5;
}
```

Als getal *i* groter of gelijk aan `10` is
dan wordt bij getal *i* `1` opgeteld.
Dit is hier niet het geval, dus wordt bij *i* `5` opgeteld.
Resultaat: *i* krijgt de waarde `10`.
```cs
int i = 5;
if (i >= 10)
{
  i  = i + 1;
}
else
{
  i = i + 5;
  if (i >= 10)
  {
    i = 20;
  }
}
```

Als getal *i* groter of gelijk aan `10` is
dan wordt bij getal *i* `1` opgeteld.
Dit is hier niet het geval, dus wordt bij *i* `5` opgeteld.
Resultaat: *i* krijgt de waarde `10`,
vervolgens wordt gecontroleerd of `i >= 10`,
dat is nu het geval dus krijgt *i* uiteindelijk de waarde `20` toegekend.
