# Naslag basiskennis: Enum

<!-- A brief introduction to enums in dutch -->

### Enum

Een enum is een datatype dat een aantal vooraf gedefinieerde waarden kan bevatten, bijvoorbeeld de dagen van de week, de maanden van het jaar, de kleuren van de regenboog, etc.

Een enum wordt gedefinieerd met het keyword `enum` en de naam van de enum. De waarden worden tussen accolades `{}` geplaatst.

```C#
enum Colour
{
    Red,
    Green,
    Blue
}
```

De waarden van een enum kunnen worden opgevraagd met de naam van de enum gevolgd door een punt en de naam van de waarde.

```C#
Colour colour = Colour.Red;
```

Een enum kan maar een beperkte hoeveelheid data vasthouden, namelijk
`int`, `uint`, `long`, `ulong`, `short`, `ushort`, `byte` of `sbyte`.

(Ook `char` is een mogelijkheid, maar waarom dit is is leuk om zelf uit te zoeken!)

Om aan te geven welk type gebruikt moet worden, kan dit achter de naam van de enum worden geplaatst.

Je kan ook zelf waardes aan een enum toekennen, bijvoorbeeld:

```C#
enum Colour
{
    Red = 1,
    Green = 2,
    Blue = 3
}
/*
    Dit hieronder is ook geldig, maar minder net. Voor betere code, gebruik de bovenstaande manier, dan is ook meteen duidelijk welke waarde bij welke kleur hoort.
*/

enum Colour
{
    Red = 1,
    Green,
    Blue
}
```

Logische condities (en zelfs rekenkundige bewerkingen) kunnen worden uitgevoerd op enums.

```C#

enum Colour
{
    Red = 1,
    Green = 2,
    Blue = 3
}

public void Test()
{
    Colour colour = Colour.Red;
    if(colour == Colour.Red)
    {
        Console.WriteLine("Colour is red");
    }
    if(colour == Colour.Green)
    {
        // Do something else
    }
    if(colour == Colour.Blue)
    {
        // Do something else
    }

    Colour newColour = colour + 1;
    Console.WriteLine(newColour);
}
```

Uitkomst:

```md
Colour is red
Green
```

Enums worden vooral gebruikt om makkelijk te wisselen tussen types, of data op een eenvoudige manier door te sturen.

### Voorbeeld

```C#

enum Vehicle
{
    Plane,
    Boat,
    Car
}

public string GetLicenseFromType(Vehicle type)
{
    switch(type)
    {
        case Vehicle.Plane:
            return "Pilot license";
        case Vehicle.Boat:
            return "Boat license";
        case Vehicle.Car:
            return "Driver license";
        default:
            return "No license";
    }
}
```