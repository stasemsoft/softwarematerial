# Naslag basiskennis: String bewerkingen (String methods)

Hieronder worden enkele veelgebruikte String functies gedemonstreerd en kort toegelicht.
Dit document is geschreven als een *naslagwerk*,
het is niet specifiek geschreven om uit te leren hoe je met variabelen programmeert.


## String’s samenvoegen
Met het `plus` teken kunnen strings aan elkaar worden geplakt.
```cs
string tekst = "een tekst.";
string woorden = "Hier staat";
string s = woorden+tekst;
```

De `s` `variabele` krijgt hier de waarde `"Hier staateen tekst."` Merk op dat niet automatisch spaties worden toegevoegd.
```cs
  string tekst = "tekst.";
  string woorden = "Hier staat";
  string s = woorden + " een " + tekst;
```

Met het &quot;+&quot;-teken kunnen strings aan elkaar worden geplakt. De &quot;s&quot; variabele krijgt hier de waarde &quot;Hier staat een tekst.&quot;

## IndexOf

De plaats van een String binnen een andere String bepalen:
De *Positie* variabele krijgt de waarde `1`.
Merk op dat de positie van de eerste gevonden &quot;e&quot; in de String
wordt gevonden (waarbij vanaf `0` wordt geteld):
```cs
string tekst = "regel tekst";
int positie = tekst.IndexOf("e");
```

Er kan ook naar meerdere letters achter elkaar gezocht worden:
```cs
string tekst = "regel tekst";
int positie = tekst.IndexOf("tek");
```

De &quot;Positie&quot; variabele krijgt de waarde 6.
**Niet gevonden** geeft `-1`:
```cs
string tekst = "regel tekst";
int positie = tekst.IndexOf("a");
```
De &quot;Positie&quot; variabele krijgt de waarde -1. De waarde -1 betekent dus: de String komt niet voor binnen de andere String.

## Substring

Een stukje uit een string kopiëren:
```cs
string tekst = "regel tekst";
string deelTekst = tekst.Substring(0, 1);
```

wat heeft als resultaat dat in deelTekst de waarde &quot;r&quot; komt te staan omdat van de oorspronkelijke tekst vanaf positie 0 precies 1 letter gekopieerd wordt.

Nog enkele voorbeelden met Substring.
```cs
"abc".Substring(0,1)  // dit geeft "a" (begin vanaf karakter met index 0, neem 1 karakter)
"abc".Substring(0,2)  // geeft "ab" (begin vanaf karakter met index 0, neem 2 karakters)
"abc".Substring(1,1)  // geeft "b" (begin vanaf index 1, neem 1 karakter)
```
Goeie oefening: Typ deze eens in in een Console app, probeer te voorspellen wat er uitkomt en print de waarde met `Console.WriteLine()`, controleer of het klopt wat je dacht. Speel hiermee tot je snapt hoe het werkt. Dan kun je vast ook voorspellen wat hier uit komt:

```cs
Console.WriteLine("abcdef".Substring(1,1));  // hoe lang en welke letters?
// Voer regel voor regel in (nadat je gezien hebt of je regel ervoor snapt):
Console.WriteLine("abcdef".Substring(3,2));
Console.WriteLine("abcdef".Substring(0,6));
// Wat zou er gebeuren bij:
Console.WriteLine("abcdef".Substring(0,7));
// of bij:
Console.WriteLine("abcdef".Substring(7,1));
// belangrijk dat je gezien hebt wat er bij die laatste 2 gebeurt!
```


```cs
string tekst = "regel tekst";
string deelTekst = tekst.Substring(6, 5);
```
Deze code heeft als resultaat dat in deelTekst de waarde &quot;tekst&quot; komt te staan omdat van de oorspronkelijke tekst vanaf positie 6 precies 5 letters gekopieerd worden.

## Length

Aantal tekens van de String bepalen. Achter `Length` hoeven
geen haakjes openen en sluiten geplaatst te worden omdat het
een `property` (eigenschap) van de string is en niet een `method`
die je uitvoert.
```cs
string tekst = "regel tekst";
int lengte = tekst.Length;
```

Deze code heeft als resultaat dat in lengte de waarde `11` komt te staan omdat de tekst precies elf lang is. Merk op: dit is inclusief spaties in de tekst.
De `double quotes` om begin en einde van de String waarde aan te geven worden niet meegeteld.
```cs
string tekst = "";
int lengte = tekst.Length;
```

Deze code heeft als resultaat dat in *lengte* de waarde `0` komt te staan
omdat geen tekens in de string staan.
