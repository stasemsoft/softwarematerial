# Training De Marimba en de Bas

Introductieopdracht werken met classes en objecten.

Maak een Console app aan. Creëer hierin een class Marimba met een method `void PlayNote(string note){}`. Om het principe te begrijpen is het goed genoeg (en het snelste) het ’spelen’ van noten te realiseren door `Console.WriteLine("marimba plays note:"+note);` Je kunt nu in je programma een marimba aanmaken en noten laten spelen.

```cs
Marimba marimba = new Marimba();
marimba.PlayNote("e");
marimba.PlayNote("d#");
marimba.PlayNote("e");
marimba.PlayNote("d#");
marimba.PlayNote("e");
```


Als je nu ook nog een class BassGuitar aanmaakt kun je meerdere instrumenten aanmaken en om de beurt noten laten spelen:

```cs
Marimba marimba = new Marimba();
BassGuitar bassGuitar = new BassGuitar();
bassGuitar.PlayNote("a");
marimba.PlayNote("e");
bassGuitar.PlayNote("g");
marimba.PlayNote("d#");
bassGuitar.PlayNote("f");
marimba.PlayNote("e");
marimba.PlayNote("d#");
bassGuitar.PlayNote("e");
marimba.PlayNote("e");
```

Verzin zelf hoe je dit programma verder kunt uitbreiden en leef je uit.
