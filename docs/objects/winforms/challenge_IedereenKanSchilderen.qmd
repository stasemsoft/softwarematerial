# Training Iedereen kan schilderen


| Niveau | 4 of 5: integraal. |
| --- | --- |
| Leerdoelen | Class, Property, Constructor, private/public, GUI separation, Paint Event, Graphics, file read. |
| Vereiste voorkennis | Goed om kunnen gaan met classes en objecten en GUI separation. |
| Challenge Type | Programming. |



## Leerdoelen
Met deze opdracht kun je laten zien dat je File Handling, Exception Handling en Graphics binnen één applicatie kunt programmeren.
- Je kunt vanuit een specificatie een programma schrijven dat werkt met de diverse functies van de Windows GDI (graphics).
- Je moet vanuit een specificatie een C#-programma kunnen schrijven waarmee tekstbestanden kunnen worden ingelezen en worden geschreven.
- Je moet op een correcte manier excepties in je C#-programma kunnen afhandelen.


## Casus 1 - Iedereen kan schilderen

Schrijf een Windows Forms C#-programma dat een tekstbestand uitleest waar graphics-commando's in staan. Het programma gaat vervolgens al die commando's uitvoeren. Een commando in het tekstbestand is een instructie waarmee jouw programma cirkels en lijnen mee kan tekenen.
Voorbeeld van de inhoud van het tekstbestand:

```cs
cirkelR
lijn
lijn
cirkelR
cirkelB
```

Als de gebruiker met jouw programma bovenstaand bestand inleest dan zullen er een rode cirkel, een lijn, nog een lijn, nog een rode cirkel en een blauwe cirkel worden getekend.
De lijnen en cirkels verschijnen op willekeurige posities op het scherm.
Mogelijke commando's: lijn, cirkelR, cirkelB.

## Functionele requirements

- De gebruiker moet met een standaard Windows dialoog (tip: gebruik de OpenFileDialog uit de Toolbox van Visual Studio) een tekstbestand met de commando's kunnen openen.
- De lijnen en cirkels verschijnen op willekeurige posities op het scherm.
- De C#-code maakt gebruik van exceptiehandling om foutmeldingen met bestanden te voorkomen.

## Casus 1a - Advanced painter

Breid het programma van casus 1 uit zodat de gebruiker:
- Meerdere bestanden tegelijk kan openen.
- Meer commando's kan gebruiken, bijvoorbeeld om groene driehoeken en teksten te tekenen.

## Casus 2 - Snake

Snake is een tekenprogramma waarmee op een snelle manier lijnen kunnen worden getrokken.
Schrijf een Windows Forms C#-programma dat voldoet aan de volgende requirements:
- Als de gebruiker op de muisknop klikt dan wordt de cursor-positie (x,y-coordinaat) van dat moment opgeslagen in twee variabelen x en y.
- Als de gebruiker de muis beweegt en dan op een andere positie nog een keer klikt dan wordt er een lijn getrokken van het eerste punt naar het tweede punt.

## Casus 2a - Snake Pro

Breidt het programma van casus 2 uit met de volgende functionaliteit:

- Mogelijkheid om vierkanten en/of rechthoeken te tekenen. De gebruiker selecteert met een radiobutton van te voren wat hij wil tekenen.
