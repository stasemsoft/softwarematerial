

# Dictaat C# classes

# 1. Classes

Een `Class` is een soort *blauwdruk*. Zie het als een tekening van hoe iets er uit moet gaan zien en wat dat “ding” kan gaan doen zodra je het daadwerkelijk gaat maken. Van een boot maak je eerst een `design`, een `ontwerp`: Wat voor soort hout heb je nodig? Waar liggen de verbindingen? Wat voor een motor komt er in te liggen? Et cetera. Deze tekening, de blauwdruk, kan niet varen. Je kunt er niet op dobberen. Pas wanneer de boot wordt gemaakt kun je er iets mee gaan doen. Je kunt er zelfs meerdere boten van maken! Zo is het met classes ook. Een class is de blauwdruk voor “iets”. Je kunt er pas mee aan de slag op het moment dat je de blauwdruk ***instantieert***: een **object** van dat ***type*** maakt.

Een andere vergelijking is dat van een ***lopende band***: Van een lopende band kunnen meerdere dingen (objecten) van een bepaald type afrollen: Elke keer dat ik `new` roep tegen de class komt er een object van dat type van de lopende band afrollen. Hoe de lopende band is 'geprogrammeerd' bepaalt wat een object van dat type uiteindelijk kan.

We gaan eerst naar wat voorbeelden kijken die je al kent. Daarna gaan we zelf een **class** maken.

## 2.1. Classes gebruiken

Je hebt al eerder de `class Random` gezien, waarschijnlijk zonder te weten dat het een class was. Een voorbeeld:

```cs
Random dobbelsteen = new Random();
int getal = dobbelsteen.Next();
```

Eerst wordt een variabele aangemaakt van het type Random met de naam 'dobbelsteen'. (ja, een `class` is een `type`, hoewel in C# niet alle types ook een class zijn). De `Random` is hier de class, de lopende band: door er `new` tegen te roepen (volgende regel) wordt een nieuw object van dit type aangemaakt en de variabele 'dobbelsteen' verwijst naar dit object.  

We zeggen dat dobbelsteen een `instance` (instantie) of `object` is van de Random class. Vandaar de term object-georiënteerd: `Object Oriented Programming`, kortweg O.O.P.).

In de derde regel zie je dat de dobbelsteen gebruikt wordt om een willekeurig getal op te vragen. Daar gebruik je dus functionaliteit die beschreven staat in de Random class. We zeggen dan dat je de `method` 'Next' aanroept (`call`t) op het object 'dobbelsteen'.

Tip: Je krijgt een `NullPointerException` wanneer je een instantie van een `class` gebruikt zonder dat deze is aangemaakt met new.

Je **form** is ook een class. In elke class kun je `fields` (variabelen, maar dan buiten een method) en `methods` programmeren. Bekijk het volgende voorbeeldje (laat `partial` en de toevoeging `: Form` even voor wat het is).

```cs
public partial class FormDemo : Form
{
   private Random dobbelsteen = new Random();

   public int GooiDobbelsteen();
   {
      return dobbelsteen.Next(1, 7);
   }

   private void knopDoeIets_Click(object ...)
   {
      int getal = GooiDobbelsteen();
   }

}
```

In het voorbeeld is een `field` aan form toegevoegd van het type Random en als naam dobbelsteen. Deze wordt direct, op dezelfde regel nog, geïnitialiseerd. In de rest van het programma kun je de dobbelsteen veilig gebruiken.

Er is ook een `method` aan het form toegevoegd. Deze kan, net als de variabele, overal in deze FormDemo class gebruikt worden. Dit wordt ook gedaan bij de click-`event handler` van de knop. Wanneer de gebruiker op de knop drukt zal er een *next* worp met de dobbelsteen worden gegooid. Het willekeurige getal wordt door de GooiDobbelsteen methode teruggegeven (`return value`). De output van deze methode wordt opgevangen in een integer met de naam 'getal'.


### Voorbeeld bestaande class:  StringBuilder
Hieronder zie je een ander voorbeeld van het gebruik van een class.

```cs
StringBuilder welkom = new StringBuilder();
welkom.Append("Welkom ");
welkom.Append("bij programmeren");
MessageBox.Show(welkom.ToString());
```

Hier wordt gebruik gemaakt van de StringBuilder class. Probeer het bovenstaande stukje code ook even zelf uit. Op de eerste regel code wordt een variabele van het type StringBuilder aangemaakt. De variabele heet welkom en wordt meteen geïnitialiseerd. Via de 'Append' method kunnen er stukken tekst aan worden toegevoegd. Deze wordt in zijn geheel, door de 'ToString()'' methode aan te roepen, aan de gebruiker laten zien.

Probeer zelf ook wat `fields` en `methodes` toe te voegen aan je form. Kijk eens wat je er allemaal mee kunt doen.

## 2.2. Zelf classes maken

Stel je een boot voor met een snelheid, een naam, een gewicht en een aantal bemanningsleden. De boot kan varen en kan het anker uitgooien. Hoe zou je dit maken in de software? Allerlei variabelen maken en losse methoden? Wat nou als er meerdere boten nodig zijn? Voor dit soort *complexe types* kunnen we gelukkig ook onze eigen classes maken. Bekijk het volgende voorbeeld.

```cs
class Boot
{
   private int Snelheid;
   private string Naam;
   private int Gewicht;
   private int AantalBemanningsleden;

   // Hieronder staan de methodes.
   public int GetSnelheid() {
      return Snelheid;
   }

   public void SetSnelheid(int snelheid)
   {
      Snelheid = snelheid;
   }

   public void Varen(int snelheid) { ... }

   public bool AnkerUitgooien() { ... }

}
```

In dit voorbeeld zie je als het goed is alle aspecten terug die beschreven stonden in het stukje tekst hierboven. Zo maak je een class! Dit kan heel gemakkelijk in Visual Studio door met je rechter-muis-knop te klikken op je C# project in de Solution Explorer en vervolgens 'Add' > 'Class' te kiezen. Nu kun je een naam voor je class ingeven en klaar ben je. Nu kun je fields en methodes toe gaan voegen. Net zoals bij je form.

```cs
Boot boot = new Boot();
boot.Varen(100);
MessageBox.Show("De snelheid is " \+ boot.GetSnelheid());
```

In bovenstaand voorbeeld zie je hoe je een eigen gemaakte class kunt gebruiken. Eigen net zoals een variable van het type Random. Je maakt een variabele aan van het juiste type (in dit geval Boot) en initialiseert deze met de `constructor` (dat is een soort van methode met dezelfde naam als de class). Dit gebeurt allemaal op de eerste regel van bovenstaand stukje code. Nu kun je de variabele gebruiken! Je kunt er methodes van aanroepen, zoals 'Varen' en 'GetSnelheid'.

```cs
Boot flDutch = new Boot();
Boot titanic = new Boot();
flDutch.GetSnelheid();
titanic.GetSnelheid();
```

Tot slot kun je hierboven een van de meest krachtige aspecten van OOP zien. Elke klasse kun je gebruiken om meerdere instanties van te maken. Nu heb ik twee boten in mijn code! Elke boot met zijn eigen invulling. Zo kan ik heel gemakkelijk boten toevoegen in de code.

Probeer eens je eigen klasse te maken en te gebruiken! Wat kun je verzinnen en wat ga je er mee doen?

