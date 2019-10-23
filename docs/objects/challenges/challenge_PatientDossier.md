# Challenge Elektronisch Patientendossier

Als je code overneemt van het internet vermeld je de bron (copy-paste de url in commentaar in je code) en zorg je dat je die code snapt.

Als je een class diagram maakt, doe dat dan bij voorkeur op whiteboard (of papier) en voeg hiervan een foto  bij.

Je kunt ervoor kiezen dat dit programma niks op slaat in een File (maak wat objecten aan vanuit code, zodat je wel wat data hebt),
gebruik casting en Exceptions alleen als dat relevant is. Overleg bij twijfel met je docent!

## De opdracht: Elektronisch Patientendossier
Je mag hierbij zelf kiezen of je een WinForm-applicatie maakt of een Console app.   
Besteed echter niet onnodig veel tijd aan de GUI-kant.

In het voorbeeld hebben classes een Nederlandse naam, maar je mag de classes ook Engelse namen geven als je wilt. Puntjes op letters laten we weg: in deze omschrijving en ook in je programma!

## Wat is het elektronisch patientendossier?
Voor de naam van een persoon mag je 1 string gebruiken, dus je hoeft geen rekening te houden met voornaam, achternaam, tussenvoegsel.

Een zorgverlener (denk bijvoorbeeld aan een huisarts, ziekenhuis, fysiotherapeut) slaat gegevens over patienten op. Dit gaat over zogenaamde NAW-gegevens (Naam, Adres, Woonplaats), geboortedatum, maar ook gegevens over de keren dat de patient langs is geweest, wanneer dat was, wat de klacht was, de diagnose en of er toen medicijnen voorgeschreven zijn.

Een huisartsenpraktijk slaat dit soort gegevens allemaal digitaal op. In de praktijk worden ook vaak gegevens over patienten uitgewisseld tussen bijvoorbeeld huisart en apotheek. Hier kleven dan allerlei privacy-uitdagingen aan vast, maar daar gaan we het nu niet over hebben.

Wat we willen zien is dat je een aantal classes maakt met methods, constructors, fields, properties en wat er verder bij nodig is.

Allereerst is er een hoofdstuk 'Opwarmer': je krijgt een class diagram aangeleverd, die classes willen we graag zien (als je zelf een slimmere structuur kunt verzinnen mag dat ook!). De tekst erbij vertelt iets over de verwachte functionaliteit.

Daarna (hoofdstuk 'En nu verder...') lees je wat er verder aan functionaliteit bijgebouwd zou kunnen worden. Je mag 1 of meerdere onderwerpen kiezen of verzint er zelf functionaliteit bij, maakt hiervoor een ontwerp (liefst op papier!). Bedenk dat je docent graag ziet dat je de leerdoelen uit de schillen in samenhang in een wat grotere applicatie

## Opwarmer
Bekijk het class diagram (plak de url in een browser naar keuze). Maak de classes vast aan:

```
http://yuml.me/diagram/scruffy/class/edit/OIS12,[Patient|naam:string;geboortejaar:int|GetLeeftijd();]&lt;*-arts-[Afspraak],[Afspraak|dagEnTijd:DateTime],[Afspraak]patient-*&gt;[Huisarts|naam:string], [Patient]
```

[class diagram](figures/patientdossier_cd)

Er hoeft niks opgeslagen te worden, dus als het programma afgesloten wordt en opnieuw opgestart beginnen we weer met dezelfde beginsituatie als altijd!

Zorg dat er na opstarten van de applicatie minstens 2 Huisartsen en minstens 25 Patienten bestaan.
Dat mag met code als:

```cs
Huisarts huisarts1 = new Huisarts("Anna");
Huisarts huisarts2 = new Huisarts("Barend");
```

Maar misschien slimmer om een List van Huisartsen te maken?

Een nieuwe Patient kan ik maken met behulp van:
```cs
new Patient("Joris", 1999)  // naam en geboortejaar
```

Maak een lijst van patienten aan: ```List<Patient>```
en voeg daar minstens 25 patienten aan toe.

Van zowel Huisarts als Patient kan de naam opgevraagd worden, maar niet veranderd (behalve bij het aanmaken van de Patient).

Van een Patient wil ik de leeftijd op kunnen vragen. Je mag dit maken met behulp van een property of met een methode GetLeeftijd(). De berekening van de leeftijd houden we simpel: 2019 - geboortejaar.

De constructor van de class Afspraak krijgt voor nu 3 parameters: een Huisarts, een Patient en een DateTime (wanneer de afspraak is). Als waarde voor DateTime mag je overal DateTime.Now() gebruiken.
Tot slot worden er minstens 50 afspraken aangemaakt bij het opstarten van het programma.

Bewaar deze in een lijst.

En nu verder...
Kies hieruit enkele items om nog bij te bouwen:

Een huisartsenpraktijk heeft doorgaans meerdere artsen in dienst. Maak een class Praktijk aan die een lijst van huisartsen heeft en ook een lijst van patienten.

De HuisartsenPraktijk krijgt een eigen lijst van Afspraken. Een object van type Praktijk krijgt daarom een methode AddAfspraak(Huisarts huisarts, Patient patient, DateTime dateTime) die een nieuwe Afspraak aanmaakt en deze toevoegt aan die lijst.

## Salarisberekening:
Ga er vanuit dat elke afspraak 63 euro kost. Maak een methode die voor elke Huisarts berekent hoeveel hij/zij verdient aan de Afspraken.

Nog mooier is het (programmeertechnisch tenminste) als elke arts zijn eigen tarief heeft: hiertoe zou je de constructor van Huisarts een extra parameter 'tarief' kunnen geven die dan natuurlijk ook ergens opgeslagen zou moeten worden.

Als iemand niet naar de praktijk kan komen (praktijkbezoek) moet de dokter op huisbezoek.
Voeg aan Afspraak een mogelijkheid toe om aan te geven dat het een huisbezoek is.
(Misschien kun je voorstellen dat er nog meer soorten afspraken zijn).

Maak een class Recept aan. Een recept heeft een omschrijving en een prijs. Er bestaan verschillende typen medicijnen, zoals: zalf, tablet, spray.
Een dokter kan bij een bezoek een recept voorschrijven dat de patient mee kan nemen naar een Apotheek.
