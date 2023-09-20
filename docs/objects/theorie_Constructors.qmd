# Constructor

Wat gebeurt er dan precies onder water als je een object aanmaakt met new?

Het statement `new Clown()` is bedoeld om van de class `Clown` een nieuw object aan te maken. Het statement roept de zogenaamde `constructor` aan. Een constructor lijkt op een `method`,  maar is geen gewone method.  

Hoe herken je een constructor in C#-code:
+ Constructor heeft altijd exact dezelfde naam als de class.
+ Constructor heeft geen return-type  en ook geen void ervoor.

Als je een nieuwe class aanmaakt zal die er zo uitzien: 

```cs
public class Clown
{

	
}
```

Hee, maar waar is die `constructor` dan? Nou, wat er eigenlijk onderwater gebeurt: als de compiler een class vertaalt die geen constructor heeft wordt er impliciet een supersimpele aangemaakt, dit noemen we een `default constructor`. De compiler doet alsof er dit staat: 

```cs
public class Clown
{

   public Clown()
   {
   }

	
}
```

Dit lijkt wat overbodig, maar we kunnen een constructor parameters geven: net als bij methods. 


```cs
public class Clown
{
   // Fields    <--  Fields maken we private!
   private string name;
   private int height;


   // constructors
   public Clown(string name, int height)
   {
      this.name = name;     // het woord 'this' geeft aan 
                            // dat het Field 'name' wordt bedoeld.  
                            // de 'name' achter het gelijkteken is de parameter. 
      this.height = height; 
   }

   // methods 
   public string TalkAboutYourself()  
   { 
      return "My name is " + this.name
               + "and I’m " + this.height + " centimeters tall.";
   }

}
```


Door de constructor parameters wordt het mogelijk bij het aanmaken van een object van type Clown meteen een naam en hoogte mee te geven: 

```cs
Clown eenClown    = new Clown("Popov", 170);  
Clown andereCloen = new Clown("Bassie", 186);
```


We hebben dan dus 2 objecten van het type Clown, hier schematisch weergegeven: 

![](../../ctor-clown-objects.png)


In de praktijk werken programmeurs vaak met `class diagrams`, zoals hieronder een voorbeeld. Meestal hebben class diagrams meerdere classes. 


![](../../ctor-class-Clown.png)


Een class wordt als een rechthoek weergegeven, bestaande uit 3 delen: 
1. bovenin staat de **naam van de class**
2. Dan volgt de **data**, hier de Fields waarin waarden opgeslagen kunnen worden: name en height. 
3. Onderin staat het **gedrag** (behavior): hier de constructor en de method die Clown heeft. 

Merk op dat de types áchter de naam staan: dus `name: string`  in plaats van zoal we het in C# gewend zijn: `string name`. 


Zoals je in de code in de class boven ziet : tussen `public` en `Clown()` staat géén returntype, verder is de naam `Clown` gelijk aan die van de class: zo weten we dat het een constructor is. 



Let op: code hoort thuis in classes, niet in forms!


## Wat is constructor overloading?

*Constructor overloading* betekent dat binnen een class meerdere  constructors bestaan. 
Je kunt dan op verschillende manier objecten aanmaken. 

Bijvoorbeeld: als je de lengte van een Clown weet geef je die mee, en anders niet: 

```cs
Clown eenClown    = new Clown("Popov");  
Clown andereClown = new Clown("Bassie", 186);
```

Aan het aantal parameters en het type ervan ziet de compiler dan welke constructor er uitgevoerd moet worden: 


```cs
public class Clown
{
   // Fields    <--  Fields maken we private!
   private string name;
   private int height;


   // constructors 
   public Clown(string name, int height)
   {
      this.name = name;    
      this.height = height; 
   }

   public Clown(string name)
   {
      this.name = name;    
      this.height = 175;   // DIT IS NOG NIET HELEMAAL ZOALS WE HET WILLEN !! Lees verder!! 
   }

   // methods 
   public string TalkAboutYourself()
   {
      return "My name is " + this.name
               + "and I’m " + this.height + " centimeters tall.";
   }

}
```

Je ziet dat een Clown waarvan we de lengte niet meegeven in deze code de lengte 175 krijgt. 

In bovenstaande code zit nog iets wat we eigenlijk niet willen: je ziet dat de code van de constructors erg op elkaar lijkt. We kunnen de constructor-code nog optimaliseren: 

```cs
   // constructors 
   public Clown(string name, int height)
   {
      this.name = name;    
      this.height = height; 
   }

   public Clown(string name) : this(name, 175)
   {
   }
```

Op het moment dat de tweede constructor aangeroepen wordt, staat daar: `this(name, 175)`: dat betekent zoveel als: roep van `this` (mezelf) de constructor aan die als parameters een string en een int verwacht: gebruik de waarde van `name`  en voor de height: `175`. 

Kun je een voordeel verzinnen van deze 'this-constructie'? 

## Magic Numbers
Overigens willen we geen hardgecodeerde getallen in code, dat noemen we `magic numbers`: geen idee waar ze vandaan komen en wat ze betekenen. Het is bijvoorbeeld netter om een `constante` aan te maken, die een duidelijke naam te geven, en die te gebruiken: 

```cs
// https://en.wikipedia.org/wiki/Average_human_height_by_country
public const int averagePersonHeight = 175;
```

Zo wordt van de aanroep  `... : this(name,averagePersonHeight)` opeens duidelijker wat die betekent. 

Ook zie je dat in commentaar een bron wordt vermeld! Dat maakt het mogelijk om het te controleren, valideren en eventueel verbeteren: 
+ Gaat het hier om een wereldwijd gemiddelde of een Nederlands getal? (Popov is een Rus). 
+ In de tabel is een aparte kolom voor mannen en vrouwen: heeft de programmeur daar rekening mee gehouden? 
+ Over een paar jaar is het mogelijk terug te zoeken of de waarden wellicht veranderd zijn. 

Zie [microsoft docs: constants](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/constants)

## Relevante trainingen
Invaders en Galgje.

