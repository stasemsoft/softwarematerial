# Training - Array - Woordvervormer

We gaan een woordvervormer maken. Maak een applicatie waar de gebruiker een woord kan invoeren. Tevens heeft de gebruiker de keus tussen de vervormopties “Spiegelen”, “Plussen” en “Onevenen”. Als de gebruiker op de knop met de tekst “Vervorm!” klikt moet zijn ingevoerde woord vervormd worden en moet hij het resultaat ervan zien. Hier volgt de uitleg van de verschillende opties in vervormen.

- Spiegelen: Het ingevoerde woord moet omgedraaid worden (“Hallo” wordt “ollaH”).
- Plussen: Een a wordt een b, een b wordt een c, …, z wordt een a (“Hallo” wordt “Ibmmp”). 
- Onevenen: Pak alleen de letters op oneven plekken in het woord (“Hallo” wordt “Hlo”).

Er geldt nog een extra spelregel! Je mag bij Spiegelen geen gebruik maken van de _Reverse_ of andere string‐gerelateerde methodes. Anders is het geen uitdaging natuurlijk ;‐)

      
## Tips
- Zie de strings als array’s en behandel ze als zodanig. Je kunt in C# van en naar char\[\] converteren. Vergeet de ASCII tabel niet voor het plussen.
- Maak een class aan voor je vervormer. Wat voor eigenschappen en acties zouden daar handig voor zijn? Zie de Klassen module voor meer informatie over dit onderwerp. Als je daar nog niet aan toe bent kun je dit later altijd nog verbeteren.