# override ToString()

```
class Persoon {

   // Field
   private string naam;

   // Property
   public string Naam
   {
      get { return this.naam; }
   }

   // ctor
   public Persoon(string naam)  
   {
      this.naam = naam;
   }

   public override string ToString()
   {
      return this.Naam;
   }
}
```


Tip bij het programmeren: zet je eigen objecten in de user interface. Hiermee wordt bedoeld dat je objecten zelf in de UI zet, geen strings of andere variabelen. Bijvoorbeeld om een Persoon-object aan een listbox toe te voegen:
```
listBox1.Items.Add(new Persoon("Sjakie"));
```

Gebruik casting om het object uit een UI-control te halen:
```
Persoon p = (Persoon)listBox1.Items[2];
```

Programmeer een `ToString()`-methode in al je `classes` om te zorgen dat je altijd een goede tekstuele representatie van je objecten hebt.


+ [video 57 van kudvenkat over override ToString()](https://www.youtube.com/watch?v=MwPZLPNR3ns&t=0s&list=PLAC325451207E3105&index=57)
