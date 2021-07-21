# Enum

## Definitie van Enum
- Enumeraties of kortweg enum’s stellen je in staat items op een gestructureerde, geordende manier voor te stellen.
- Een enumeratie zorgt ervoor dat de elementen aan te spreken zijn met een naam. (op machinecodeniveau worden de enums opgeslagen als integers, standaard beginnend vanaf 0).
- Visual Studio behoedt je voor tikfouten en logische fouten.

## Voorbeeld

```cs
enum Dag
{
   Zondag,
   Maandag,
   Dinsdag,
   Woensdag,
   Donderdag,
   Vrijdag,
   Zaterdag
}
```


De volgende code is dan mogelijk:

```cs
Dag d;
d = Dag.Woensdag;
```

Een ander voorbeeld is de maanden van het jaar: Januari tot en met...

## Waarom zou ik enums gebruiken?

Dat wordt duidelijk aan de hand van het volgende voorbeeld:
Een kalender applicatie waarbij je een item aan een weekdag kunt aanroepen.
Initieel:

```cs
void VoegToeAanKalender(int dag, string item)
```

De dagen in de week zijn als constanten aangemaakt. Zondag is 0, Maandag is 1, etc.
Hetzelfde voor de maanden in het jaar: Januari is 0, Februari is 1, etc.

Als je nu een programmeerfout maak:

```cs
VoegToeAanKalender(Februari, “hele maand spectaculaire aanbiedingen”);
```

Dan wordt hier braaf het item toegevoegd op maandag… Oops.

Met enums houdt de compiler je tegen, dan wordt het immers:

```cs
void VoegToeAanKalender(Dag dag, string item)
```

aangezien Maand geen Dag is. 

# extra 

+ [pptx](knowEnum.pptx)
