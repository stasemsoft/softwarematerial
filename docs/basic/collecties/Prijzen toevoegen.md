# Training - List - Prijzen toevoegen

Voeg een aantal prijzen toe in onderstaand stukje code, op de plek waar het commentaar staat. Herschrijf de for\-loop naar een foreach herhalingsstructuur. Controleer je nieuwe code in een C# project. 

```csharp
List<double> prijzen = new List<double>(); 
double totaalPrijs = 0.0; 
// Hier moet je nog een aantal prijzen (doubles) aan de List toevoegen. 

foreach (double prijs in prijzen) 
{ 
	totaalPrijs = totaalPrijs + prijs; 
} 

Console.Out.WriteLine("De totaalprijs is " + totaalPrijs.ToString("C"));
```