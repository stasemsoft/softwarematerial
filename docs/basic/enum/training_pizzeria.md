# Training - Enums - Pizzeria

## Deel 1

Je bent gevraagd om voor een lokale pizzeria een kassa systeem te maken. De pizzeria heeft een aantal pizza's op het menu staan. De pizza's hebben de volgende eigenschappen:

Soort: Margherita, Salami, Hawaii, Quattro Formaggi, Tonno

In een DropDownBox, moeten de soorten pizza's komen te staan. Een cassiere kan een pizza selecteren en deze toevoegen aan een ListBox. De ListBox moet dan alle pizza's voor de bestelling tonen, en kunnen "afrekenen". (Je mag hierbij de lijst gewoon leeg maken).

## Deel 2

De pizzeria is heel blij met je systeem, maar ze willen het iets uitbreiden. Ze hebben namelijk 3 maten pizza's:
Maat: Klein, Medium, Groot

De standaard prijs voor een pizza is 8 euro. Voor een medium pizza betaal je 2 euro extra, en voor een grote pizza betaal je 4 euro extra. De cassiere moet nu ook de maat van de pizza kunnen selecteren. De ListBox moet nu ook de maat van de pizza tonen, en onder de listbox moet de totaalprijs van de bestelling komen te staan.

Gebruik hiervoor de volgende code als ondersteuning:

```C#

struct Pizza
{
    public PizzaType Type { get; set; }
    public PizzaSize Size { get; set; } // Tip, noem je nieuwe enum PizzaSize

    public Pizza(PizzaType type, PizzaSize size)
    {
        Type = type;
        Size = size;
    }

    public override string ToString()
    {
        return $"{Type} - {Size}";
    }
}

```
