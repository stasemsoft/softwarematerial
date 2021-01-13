# Constructor

Wat gebeurt er dan precies onder water als je een object aanmaakt met new?

## Wat is method overloading?

*Method overloading* betekent dat binnen een class meerdere  methods met dezelfde naam bestaan.

## Wat is constructor overloading?

*Constructor overloading* betekent dat binnen een class meerdere  constructors bestaan.


![](figures/class1-uml.png "class")

## Een voorbeeld

Zie figuur
[](#fig:clown).
![fig:clown](figures/class1-uml.png "class")
```
public class Clown
{
   // velden  
   public string Name; 
   public int Height;

   // methoden 
   public void TalkAboutYourself()  { 
      MessageBox.Show(“My name is “ + Name
                  + “and I’m “ + Height + “ inches tall.”); 
   }
```


Dan is mogelijk:

```
Clown oneClown = new Clown();   //aanmaken object oneClown
oneClown.Name = "Boffo";
oneClown.Height = 14;
oneClown.TalkAboutYourself();

Clown anotherClown = new Clown(); //aanmaken object anotherClownㄢotherClown.Name = "Biff";
anotherClown.Height = oneClown.Height + 2;
anotherClown.TalkAboutYourself();
```


```
public class Guy
{
   //velden
   private string name;  private int cash;

   //constructoren
   public Guy(string nm, int c)
   {
      name = nm;
      cash = c;  }

   public Guy(string nm)
   {
      name = nm;
      cash = 33;  }


}
```

Constructor heeft altijd exact dezelfde naam als de klasse.
Constructor heeft nooit een return-type  en ook geen void ervoor.
Een klasse kan meerdere constructors hebben.

```
Guy someGuy;
Guy anotherGuy;
someGuy = new Guy("Joe",20);
anotherGuy = new Guy("Jack");
```


Vanaf nu is het belangrijk dat je veel gaat programmeren met classes, methods, constructors en properties.

Let op: code hoort thuis in klassen, niet in forms!

Zorg ervoor dat je de feedback van je docent noteert in de FeedPulse, want zo weet je hoe je ervoor staat.

## Relevante challenges
Invaders en Galgje.
