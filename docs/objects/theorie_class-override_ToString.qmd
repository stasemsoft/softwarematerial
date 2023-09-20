## Je object als string: override ToString()

![](figures/FUN12_boot.png "Boot")

Soms wil je de *instantie* (dus het *object*) dat je hebt gemaakt van je eigen class afbeelden als string. Bijvoorbeeld om in een ListBox te zetten. Gelukkig heeft C# daar de 'ToString' methode voor bedacht. Elke class heeft deze methode. Probeer maar uit.

```cs
Boot b = new Boot();
string bootString = b.ToString();
MessageBox.Show(bootString);
```

Zoals je in de screenshot aan de rechterkant van de pagina al kunt zien is dit nog niet erg nuttig te noemen. Dit is wat de standaard ToString methode met je klasse doet. Gelukkig kunnen we daar zelf een meer bruikbare definitie aan geven. Bekijk het onderstaande stukje code.

```cs
public override string ToString()
{
   StringBuilder sb = new StringBuilder();
   sb.AppendFormat("{0}: {1} knopen, {2} ton, max. {3} man.",
   Naam, Snelheid, Gewicht, AantalBemanningsleden);
   return sb.ToString();
}
```

Hier zie je een 'ToString method' die wat meer gegevens over de boot zal weergeven. Dit is ook te zien in onderstaande screenshot. Deze ToString methode kun je gewoon copy-pasten in je Boot klasse. Nadat je dat gedaan hebt kun je de nieuwe ToString methode gebruiken en uitproberen.

![](figures/titanic.png "Titanic")


Let op dat je het `override` keyword ook meeneemt in de methode definitie. Daarmee weet C# dat je de standaard ToString methode wilt herschrijven. Die was toch al niet zo nuttig. Dus je eigen invulling is vast beter.

De ToString methode is ook handig om een andere reden. C# gebruikt die namelijk in de weergave van je objecten. Bekijk wat er is gebeurd in het volgende voorbeeld.


```cs
Boot b = new Boot();
...
lbBoten.Items.Add(b);
```

Op het moment dat je een boot toevoegd aan de ListBox zal C# voor jou de ToString methode aanroepen en deze gebruiken in de weergave. De ListBox zelf bevat de gehele instantie, niet alleen maar de string. Best handig dus!

Ga zelf aan de slag met de ToString methode en probeer deze uit in verschillende klassen die je zelf hebt gemaakt. Kun je deze dan ook in een ListBox zetten?

![](figures/boot_toevoegen.png "Boot toevoegen")

