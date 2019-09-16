<a id="cha:knowConstructor"></a>

Bij FUN12 heb je leren werken met de new-operator. Maar wat gebeurt er dan precies onder water als je een object aanmaakt met new? Dat is het leerdoel van deze week.
### Leerdoelen
Kunnen uitleggen wat method overloading is (het is: dat je binnen een klasse methoden met dezelfde naam kunt hebben)
Nieuwe constructors kunnen programmeren vanuit een gegeven specificatie.
![](figures/class1-uml.png "class")

### Nog een voorbeeld

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


Dan is mogelijk:```
Clown oneClown = new Clown();   //aanmaken object oneClown
oneClown.Name = "Boffo";
oneClown.Height = 14;
oneClown.TalkAboutYourself();

Clown anotherClown = new Clown(); //aanmaken object anotherClownㄢotherClown.Name = "Biff";
anotherClown.Height = oneClown.Height + 2;
anotherClown.TalkAboutYourself();
```

Een `klasse`/`class` is een blauwdruk van een `object`. Je kunt zo veel `objecten` van een zeker `type` opvoeren als je wilt. Elk `object` heeft zijn eigen `data`.
Naast de term `object` kom je ook vaak de term `instantie` of `instantie van een klasse` tegen. Ze betekenen hetzelfde.
### Constructor
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
Constructor heeft nooit een return-waarde en ook geen void ervoor.
Een klasse kan meerdere constructoren hebben.
Gelijk is nu:
```
Guy someGuy;
Guy anotherGuy;
someGuy = new Guy("Joe",20);
anotherGuy = new Guy("Jack");
```


Vanaf nu is het belangrijk dat je veel gaat programmeren met klassen, methoden en constructoren en property's. Probeer zo veel mogelijk opdrachten uit te werken maar let op: code hoort thuis in klassen, niet in forms!
Zorg ervoor dat je de feedback van je docent noteert in de FeedPulse, want zo weet je hoe je ervoor staat en wat je nog moet gaan doen om OIS12 succesvol af te sluiten.
### Relevante challenges
Invaders en Galgje.
