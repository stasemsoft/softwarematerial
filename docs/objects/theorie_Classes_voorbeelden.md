## 2.4. Voorbeelden met classes

### Voorbeeld
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


### Voorbeeld
```cs
class DierenVerzorger {
   private string Naam;
   private DateTime InDienstSinds;

   public void SetNaam(string naam) {
      Naam = naam;
   }

   public bool Verzorg(Aapje aap) {
      // Verzorg aapje...
      Console.Out.WriteLine( aap.MaakGeluid() );
      return true;
   }

}
```

Hier zie je een nieuwe class, _DierenVerzorger_. Deze heeft een naam en een datum van indiensttreding. Elke verzorger kan ook een aapje verzorgen. Zo zie je dat je ook andere klassen die je maakt kunt gebruiken in zelfgemaakte klassen:

```cs
DierenVerzorger verzorger = new DierenVerzorger();
verzorger.SetNaam("Henk");
verzorger.Verzorg(kong);
```

Probeer zelf de verzorger eens een datum te geven voor zijn of haar indiensttreding. _DateTime_ is ook een klasse.


### Voorbeeld

```cs
class Speler {

   private string Naam;
   private int AantalLevens;
   private int Score;

   public void SetNaam(string naam) {
      Naam = naam;
   }

   public void SetAantalLevens(int levens) {
      AantalLevens = levens;
   }

   public void VerdienPunten(int punten) {
      if (IsGameOver() == false) {
         Score = Score + punten;
      }
   }

   public void VerliesLeven() {
      if (IsGameOver() == false) {
         AantalLevens = AantalLevens - 1;
      }
   }

   // lees goed wat hier staat!:
   public bool IsGameOver() {
      return (AantalLevens <= 0);  
	  // bedenk: (AantalLevens <= 0) is al een Boolean.
   }

   public override string ToString() {
      return Naam + ": " + Score;
   }

}
```

Hier links zie je een class voor een speler in een game. Elke speler heeft een naam, een huidige score en een aantal levens. Er zijn drie methoden. Met de VerdienPunten methode kan een bepaald aantal punten worden toegevoegd aan de score van de speler. Dit kan echter alleen maar wanneer de speler nog niet game over is.

Een speler is game over wanneer het aantal levens 0 of lager is. De speler verliest punten met de VerliesLeven methode. Deze zal het aantal levens met 1 verlagen wanneer de speler nog niet game over is.

Wat is de totaalscore van Scott in na het uitvoeren van het stukje code op de volgende pagina? Voer de code uit ter controle!

```cs
Speler s = new Speler();
s.SetNaam("Scott Pilgrim");
s.SetAantalLevens(3);
while (s.IsGameOver() != false)
{
   s.VerdienPunten(100);
   s.VerliesLeven();
}
Console.Out.WriteLine(s);
```
