# Theorie Property

Een `property` verleent je toegang tot een *eigenschap* van een `object`. Je hebt properties vermoedelijk al eerder gebruikt, nu leer je hoe je ze ook zelf kan maken.

## Gebruik van bestaande property

Je hebt in Visual Studio waarschijnlijk al de `property editor` gezien, zeker als je een WinForm app gemaakt hebt. Je kunt hier allerlei *eigenschappen* (`properties`) van een *Form*, *Button*, *TextBox* en nog vele andere `Controls` bekijken en aanpassen.

Als je vanuit code de *Text* van een *TextBox*  opvraagt (`get`) of een waarde geeft (`set`) gebruik je properties.

```cs
string input = TextBoxInput.Text;
// dan een aantal berekeningen (weggelaten)
result = ...
// tot slot de uitkomst in een label terug:
LabelOutput.Text = result;
```

## Eigen properties voor eigen objecten

Stel, je hebt een Stopwatch klasse,
dan zou deze een private field seconds kunnen hebben.
Wil je dat dit field alleen gelezen kan worden door andere code,
kun je een property hiervoor aanmaken.
De conventie is dat fields geschreven worden met kleine letters;
properties worden begonnen met een hoofdletter.
Zie onderstaand voorbeeld:
```cs
class Stopwatch
{
    private int seconds;                // Field
    public int Seconds                  // Property
    {
        get { return seconds; }         // Getter
    }
}
```

Hieronder staan een paar manier waarop deze `class` wél en níet gebruikt kan/mag worden.
```cs
Stopwatch sw = new Stopwatch();
int tijd1 = sw.seconds;                  // Mag niet, omdat field seconds private is.
int tijd2 = sw.Seconds;                  // Mag wel (hoofdletter) omdat de property public is.
sw.Seconds = 10;                        // Mag niet (geen setter)
```

Een andere mogelijkheid is om een field op een bepaalde manier in te stellen. We zouden bijvoorbeeld de stopwatch instelbaar kunnen maken met minuten:
```cs
class Stopwatch
{
    private int seconds;                // Field
    public int Seconds                  // Property
    {
        get { return seconds; }         // Getter
    }
    public int Minutes                  // Property
    {
        get { return seconds / 60 };    // Getter
        set { seconds = value * 60 };   // Setter
    }
}

Stopwatch sw = new Stopwatch();
sw.Minutes = 5;                         // Instellen in minuten
int tijd = sw.Seconds;                  // Uitlezen in seconden (300)
```




## Externe bronnen

+ [CSharp.Net tutorials](http://csharp.net-tutorials.com/classes/properties/)

+ [MS programming Guide](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/properties)

+ [CodeProject](https://www.codeproject.com/Articles/1006217/Diving-into-OOP-Day-Properties-in-Csharp-A-Practic)

+ [MSDN](https://msdn.microsoft.com/en-us/library/windows/desktop/aa370889(v=vs.85).aspx)

Wil je meer lezen over properties dan vind je op MSDN een goede uitleg (negeer voor nu het uitgebreidere voorbeeld onder de kop Example).
[MSDN over properties](http://msdn.microsoft.com/en-us/library/w86s7x04.aspx)
