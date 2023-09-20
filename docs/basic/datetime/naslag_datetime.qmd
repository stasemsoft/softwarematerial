# DateTime

## DateTime input

In applicaties wordt er vaak gebruik van data en tijd gemaakt. Denk aan bijvoorbeeld een afspraken-applicatie waar men afspraken kan toevoegen. 

Gelukkig zit er in C# de **DateTime** struct (een stukje code waar data en functionaliteit zit). Je kunt de DateTime op deze manier initialiseren:

```cs
DateTime datetime = new DateTime();
Console.WriteLine(datetime.ToString());
```

Het resultaat is: 01-01-0001 00\:00\:00. 
Dit komt omdat je geen waardes meegeeft. Dit kan je op verschillende manieren doen. 

### Datum veranderen

Wil je een specifieke datum ophalen? Dan gebruik je de parameters in het DateTime object:
```cs
DateTime datetime = new DateTime(2024, 03, 17);
Console.WriteLine(datetime.ToString());
```
De volgorde van parameters hier is jaar, maand en dag. Dit object geeft ons 17 maart 2024 op.

Je kunt hier ook nog een tijd aan toevoegen:
```cs
DateTime datetime = new DateTime(2024, 03, 17, 7, 13, 2);
Console.WriteLine(datetime.ToString());
```
De volgorde hierin is jaar, maand en dag. Dit object geeft ons 17 maart 2024 07\:13\:02 op. Je hebt nog meerdere [mogelijkheden](https://docs.microsoft.com/en-us/dotnet/api/system.datetime.-ctor?view=net-5.0) om een datum-tijd via parameters aan te passen.

Verder heb je nog een aantal methodes waardoor je ook de datum kan aanpassen. 

Je kunt onder andere de huidige tijd ophalen door **Now** te gebruiken:

```cs
DateTime vandaag = DateTime.Now;
Console.WriteLine(vandaag.ToString());
```

Wil je weten welke datum het over 3 dagen is? Gebruik dan **AddDays**:

```cs
DateTime vandaag = DateTime.Now;
DateTime overDrieDagen = vandaag.AddDays(3);
Console.WriteLine(overDrieDagen.ToString());
```
Je hebt ook AddHours, AddMilliseconds, AddMinutes, AddMonths, en nog veel [meer](https://docs.microsoft.com/en-us/dotnet/api/system.datetime.add?view=net-5.0).


## DateTime output

Het is natuurlijk geweldig dat je een DateTime object kan aanmaken, maar wat kan je er mee? Een handige toepassing is bijvoorbeeld dat je los van elkaar de dagen, maanden, jaren en enzovoorts kan laten zien:
```cs
DateTime datetime = new DateTime(2024, 03, 17, 7, 13, 2);
int jaar = datetime.Year; //2024
int maand = datetime.Month; //3
int dag = datetime.Day; //17
int uur = datetime.Hour; //7
int minuut = datetime.Minute; //13
int seconde = datetime.Second; //2
```

## DateTime vergelijken
Het kan ook heel handig zijn om te controleren of een datum al is gepasseerd. Hiervoor heeft de DateTime class de methode **Compare**.

```cs
DateTime vandaag = DateTime.Now;
DateTime eenDag = new DateTime(2024, 03, 17, 7, 13, 2);
int resultaat = DateTime.Compare(vandaag, eenDag);

if (resultaat < 0)
{
	//Het is vroeger
}
else if (resultaat == 0)
{
	//Het is dezelfde tijd
}
else
{
	//Het is later
}
```

Er zijn nog meer mogelijkheden met DateTime. Bekijk de bronnen voor meer informatie.

Voor meer informatie, kijk hier:
- [DateTime Struct](https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0)
- [DateTime in C# C-Sharpcorner](https://www.c-sharpcorner.com/article/datetime-in-c-sharp/)
- [DateTime in C#](https://www.youtube.com/watch?v=KKzSQ6r93dY)