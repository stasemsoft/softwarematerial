# Voorbeeld class Aapje

## Voorbeeld
```cs
class Aapje {
   private string Soort;
   private int Leeftijd;

   public void SetSoort(string soort) {
      Soort = soort;
   }

   public string MaakGeluid() {
      return "Oek oek oek";
   }

   public override string ToString() {
      return Soort + " zegt " +
      MaakGeluid();
   }

}
```

Hier wordt een klasse _Aapje_ gemaakt. Elk aapje wat je aanmaakt in de code is van een bepaalde soort en heeft een leeftijd. De leeftijd is een geheel getal (integer) en het soort aap is een string.

Maak een aapje aan met:

```cs
Aapje kong = new Aapje();
kong.SetSoort("Gorilla");
```

Elk aapje kan ook als string worden weergegeven met de ToString method. Probeer het zelf eens uit:

```cs
Console.Out.WriteLine(kong);
```

