# Bloeddrukmeten
Deze opdracht heeft veel leerdoelen van OIS11 om aan te stippen.

## Context
Je bent als software engineer ingehuurd om voor een ziekenhuis een app te programmeren die gebruikt wordt om de bloeddruk van mensen te checken.

Analyse/vooronderzoek heeft deze informatie opgeleverd:
https://nl.wikipedia.org/wiki/Bloeddruk

# Start

## Opdracht 0: Must haves
 1. Gebruiker moet de leeftijd van de patiënt kunnen invullen.
 1. Gebruiker moet met een radiobutton aan kunnen geven of het een man of vrouw is. Dit moet met radio buttons worden geprogrammeerd.
 1. Gebruiker moet de bloeddruk in kunnen vullen. Deze bestaat uit twee verschillende invulvelden: bovendruk en onderdruk.
 1. Gebruiker moet naam van de patiënt in kunnen vullen.
 1. Het systeem moet de volgende informatie op een overzichtelijke wijze aan de gebruiker laten zien: 
    * Of de patiënt een Hoge, Lage, Optimale of Normale bloeddruk heeft. Tip: hierbij heb je de formule nodig die de gemiddelde bloeddruk Pgemiddeld uitrekent (zie Wikipediapagina).
    * Indien de patiënt een man is moet het scherm (achtergrondkleur, form) blauw worden en anders roze.
 1. Easter egg: er moet een zogenaamde Easter egg in het systeem zitten. Als je als naam van de patient "Paashaas" invult dan moet er 10x een MessageBox verschijnen "Happy Easter". Hierbij moet gebruik gemaakt worden van een methode en van een while lus.
 1. Er moet op een logische wijze van methoden gebruikt gemaakt worden, minimaal 1 functionele methode.

## Opdracht 1: Could haves
 1. Als de patiënt een man is van boven de 65 of een vrouw van boven de 67 dan moet de melding "Patiënt heeft extra aandacht nodig" verschijnen indien de bloeddruk Hoog is.
 1. Er staat geen code in de eventhandlers van buttons en dergelijk behalve aanroepen naar methoden.
 1. Het programma rekent met een while lus (verplicht met een while lus) de lengte van de naam van de patiënt uit en laat die op het scherm zien.
 1. De user interface ziet er gelikt en professioneel uit.
 1. De ingevulde gegevens worden in een bestand opgeslagen en bij een volgende keer opstarten moeten de ingevulde gegevens weer worden uitgelezen.
 1. Het programma is gemaakt met XAML (dus bijv. een WPF/UWP-programma) in plaats van met Windows Forms.