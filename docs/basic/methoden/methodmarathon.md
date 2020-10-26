# Training method marathon

Maak een console-app aan en programmeer hierin de hieronder genoemde methods. Roep ze allemaal minstens 1 keer aan, of vaker. Controleer of je overtuigt bent dat het antwoord klopt!
Wellicht is het hier en daar handig een flowchart of ander hulpmiddel te gebruiken. Maak daar dan een foto van en voeg die aan je Trainingsopdrachten toe.

`Quote: Understand well as I may, my comprehension can only be an infinitesimal fraction of all I want to understand. (Ada Lovelace)`

(i) Maak een method *FullName* met de parameters *forename* en *surname* (voor- en achternaam, als je het liever in het NL doet).
Aanroep *FullName("Ada", "Lovelace")* geeft terug: "Ada Lovelace", de naam van de eerste programmeur ooit. De aanroep *FullName("Alan", "Kay")* geeft terug: "Alan Kay". 

(ii) Maak een method genaamd *Times* met dezelfde parameters als de vorige. De returnwaarde is een *int* die het aantal letters in voornaam maal het aantal letters van de achternaam bevat.

(iiia) Maak een method genaamd *IsIn* met een string-parameter `character` en een string-parameter 'word'. De method geeft een boolean terug: true als het 'character' in 'word' voorkomt, anders false. Als je hier niet zelf uit komt kijk dan eens beneden aan deze pagina naar 'Eerste Hulp Bij Vasthangen'.

(iib) Maak weer een method genaamd *InCommon* met de string-parameters forename en surname, die precies de letters teruggeeft die in voor- én achternaam voorkomen (als String of als List).

`Quote: Always remember, however, that there’s usually a simpler and better way to do something than the first way that pops into your head."  (Donald Knuth)`

(iv) Method *HowMuchLonger*, zelfde parameters, die een getal teruggeeft: het aantal letters dat de achternaam langer is dan de voornaam, óf 0 als de achternaam niet langer is dan de voornaam.

(v) Method *VoornaamVan* met 1 parameter: de fullName
(bv. "Donald Knuth", een bekende informaticus).
De method returnt de voornaam.

(vi) Idem *AchternaamVan*.

`Quote: Most software today is very much like an Egyptian pyramid with millions of bricks piled on top of each other, with no structural integrity, but just done by brute force and thousands of slaves. (Alan Kay)`

(vii) Maak een method *VoornaamAchterstevoren* die van de parameter fullName de voornaam pakt en de letters achterstevoren achter elkaar plakt in een String: dit is de returnwaarde van deze methode.

(viii) Maak een method *AchternaamAchterstevoren* die van de parameter fullName de achternaam pakt en de letters achterstevoren achter elkaar plakt in een String: dit is de returnwaarde van deze methode.

`Quote: If debugging is the process of removing software bugs, then programming must be the process of putting them in. (Edsger W. Dijkstra)`

(ix) Maak een method *UmEnUmVoorAchter*, die van parameter fullName eerste de 1e letter van de voornaam pakt, dan de 1e van de achternaam, dan de 2e letter van de voornaam, 2e van de achternaam, 3e vd voornaam, 3e vd achternaam, 4e ... nou, je snapt het denk ik wel. Als de ene naam 'op' is en de andere nog niet, plak dan de overgebleven letters er nog achter en geef de opgebouwde string terug. Roep deze methode een paar keer aan en controleer het resultaat!
Voorbeeld: UmEnUmVoorAchter("Edsger Dijkstra") geeft: "EDdisjgkesrtra"

`Quote:
The art of programming is the art of organizing complexity. (Edsger W. Dijkstra)`

(x) Je raadt het al: we willen ook een *UmEnUmAchterVoor*, die hetzelfde doet als de *UmEnUmVoorAchter*, maar de 1e letter komt van de achternaam in plaats van de voornaam.
Voorbeeld: UmEnUmVoorAchter("Edsger Dijkstra") geeft: "DEidjskgsetrra"

`Quote: The best programs are written so that computing machines can perform them quickly and so that human beings can understand them clearly. A programmer is ideally an essayist who works with traditional aesthetic and literary forms as well as mathematical concepts, to communicate the way that an algorithm works and to convince a reader that the results will be correct. (Donald Knuth)`

(xi) Maak een method *WordCount* die een string binnenkrijgt met een tekst (bijvoorbeeld een van de quotes op deze pagina). De method returnt een getal: het aantal woorden in de string.

(xii) Maak een method *MeanLength* die een string binnenkrijgt met een tekst (bijvoorbeeld een van de quotes op deze pagina). De method returnt een double: het gemiddelde aantal letters per woord.  

(xiii) Maak een method *IsSchrikkel* die gegeven een int parameter `jaartal` een bool teruggeeft: `true` als het een schrikkeljaar is, `false` anders. Programmeer de berekening zelf.
Wanneer is een jaar een schrikkeljaar? Als het deelbaar is door 4 (2020 is een schrikkeljaar), maar niet wanneer het deelbaar is door 100 (2100 is geen schrikkeljaar), behalve een keer in de 400 jaar (2000 was wél een schrikkeljaar).
Voor de liefhebber: er is al heel wat geschreven over kalenderberekeningen, zie bijvoorbeeld
[The Calender FAQ](https://www.tondering.dk/claus/calendar.html)

(xiv) Maak een method *aantalDagenInFebruari* die gegeven een jaartal (int) het aantal dagen in februari in dat jaar.

(xv) Maak een method *aantalDagenInJaar* die gegeven een jaartal (int) het aantal dagen in dat jaar teruggeeft.


# Eerste Hulp Bij Vasthangen

Hoe pulk je letters uit een string? Hoe tel je het aantal letters in een string? Hoe kijk je of een string als deel van  een andere string voorkomt?
+ [string manipulatie (in Toolbox basis)](https://stasemsoft.github.io/softwarematerial/docs/basic/#string-manipulatie-in-c)
