# Visual Studio installatie

## Wat heb ik nodig?

Een ontwikkelomgeving (kort: IDE). Als je nog geen ervaring hebt raden we de `default` aan:

### Default: `VS for MS-Windows`

Visual Studio (afgekort: VS). De default is
`VS for MS-Windows`. In sommige opdrachten zie je (nog) screenshots van WinForms-apps, die je alleen in deze versie kunt maken. In andere omgevingen moet je eerst bedenken hoe je hetzelfde effect kunt bereiken. Ook kan het zijn dat een docent of mede-student iets met WinForms voordoet: Het is dan het makkelijkste als jij dezelfde versie gebruikt.

Je kunt hierbij de Community Edition (gratis license) gebruiken: alles wat we in het startsemester doen kan daarin.



### Alternatief: `FHICT online werkplek`

FHICT biedt ook een 'Online FHICT werkplek'. Zie `studentenplein` op `portal.fhict.nl`.

+ Dit is `VS for windows` zonder dat je MS-Windows lokaal geïnstalleerd hoeft te hebben.
+ Je moet dan wel continu ingelogd blijven.
+ Je moet ook gemaakte spullen naar lokaal kopiëren, anders ben je ze kwijt!


### Alternatief: `Visual Studio Code`

Als je nog geen programmeerervaring hebt raden we dit af, omdat sommige dingen net anders werken dan bij je mede-studenten en docenten: wellicht moet je zelf wat dingen uitzoeken.

+ Installatie is lastiger.
+ WinForms wordt niet ondersteund in 'VS Code'.
+ verder een prima programmeeromgeving.
+ wordt ook bij Technology Verdieping gebruikt.

### En op een Mac?


+ Default: We raden aan Bootcamp of eventueel een Virtual Machine (bijvoorbeeld VMWare of Parallels) te draaien met MS-Windows en daarin `VS for Windows`. Dit vreet wel schijfruimte en kan zo nu en dan wat trager zijn, maar je hebt dezelfde IDE als medestudenten onder Windows.
  + [https://support.apple.com/nl-nl/boot-camp](https://support.apple.com/nl-nl/boot-camp)
+ `VS for Mac`: ondersteunt geen WinForms; short-cut-keys zijn anders; verder een prima programmeeromgeving.
+   `Rider: Fast & powerful cross-platform .NET IDE`: ondersteunt WinForms. Het is een onderdeel van Jetbrains en via je studenten account kan je gratis deze software gebruiken. 
+ `Visual Studio Code`: zie boven.
+ De 'Online FHICT werkplek': zie boven.

Voor zowel bootcamp alsmede VM oplossing heb je extra software nodig. Deze kun je gratis vinden in de webshop die hierboven gelinkt is.


## Installatie

### Een Manier
Je zoekt op internet naar &quot;Visual Studio 2017 community&quot;.
[Bijvoorbeeld hier](https://visualstudio.microsoft.com/vs/)

De gratis versie van VS noemen ze de Community Edition.
Kies bij het installeren voor &quot;.NET desktop development&quot;.
Deze versie is voor het startsemester voldoende. Maar....

#### Een andere manier: Via Studentenplein
Het kan ook via [studentplein](https://portal.fhict.nl/Studentenplein/SitePages/Home.aspx)
op de
[FHICT-portal](https://portal.fhict.nl),
onder het kopje 'Software'.


## Je eerste programma (WinForm, werkt alleen in VS for MS-Windows)

Wil je weten of je VS werkt? Start Visual Studio op. We maken eerst een nieuw project aan en gaan daarna C# sourcecode intikken. Vervolgens starten we de C# sourcecode op. Je eerste programma!

![fig:visualstudio](figures/VS080-done.png "Dit is Visual Studio")
Als je
[dit]()
ziet na de installatie, dan ben je startklaar voor de volgende stap.

### Windows Forms App C#

Kies in het menu 'File' voor 'New' en dan 'Project'.
Zie
[New Project]().
![fig:vsprojectnew](figures/VS090-newproject.png "Dit is Visual Studio")


Zorg ervoor dat je het blauwe deel exact hetzelfde laat zien als bij jou op het scherm.
Sleutelwoorden: &quot;Visual C#&quot; staat links geselecteerd en er staat
&quot;Windows Forms App (.NET Framework) Visual C#&quot;.
Geef het project een zelfgekozen naam bij &quot;Name&quot; en klik vervolgens op &quot;OK&quot;.

### Tikken C# Sourcecode
Om bij de source code van je eerste (lege) programma te komen
moeten we die zichtbaar maken. Klik rechts op 'Form1' en kies 'View Code F7'.
![](figures/viewcode.png "View Code")

Je ziet nu in het midden C# source code.
Kopieer de regel hieronder en plak die onder de regel die er al staat.
Maak het zo dat je scherm er hetzelfde uitziet als hieronder.
Het gaat om het toevoegen van alleen deze regel.
Sommige namen in de regels erboven en eronder heten wat anders.
Dat komt omdat in het voorbeeldprogramma de namen
misschien net wat anders gekozen zijn. Dat is niet erg.

```cs
MessageBox.Show(System.Text.Encoding.UTF8.GetString(System.Convert.FromBase64String("SGVsbG8gV29ybGQh")));
```

![](figures/vspasswordcodehello.png "password code")

Wezenlijk voeg je dus alleen maar &quot;MessageBox...&quot;-regel toe onder de &quot;InitializeComponent()&quot;-regel.
Deze regel bevat een geheime code die een boodschap aan je laat zien bij het opstarten.

### Opstarten eerste programma

Nadat je C# sourcecode hebt getikt moet je Visual Studio de opdracht geven
om het programma te maken (compileren) en uit te voeren (runnen).
Dat doe je met de knop &quot;Start&quot;. Je krijgt na het uitvoeren een boodschap te zien.



![](figures/runstop_run.png "run")
![](figures/runstop_stop.png "stop")

Het valt je op dat Visual Studio twee &quot;gezichten&quot; heeft.
Een bewerkingsmodus en een uitvoeringsmodus.

- De `bewerkingsmodus` gebruiken we het meest. Daar kun je knoppen programmeren en C# sourcecode tikken. Visual Studio start op in deze modus en in deze modus hebben we net die regel C# sourcecode toegevoegd. In deze modus kunnen we ons nieuwe programma opstarten met &quot;Start&quot;.
- Nadat je op &quot;Start&quot; klikt verspringen alle icoontjes. Soms blijft je C# sourcecode nog staan, soms niet. Je ziet Visual Studio je programma opstarten en grafieken tekenen van je CPU/Memory. Visual Studio is in deze modus bezig met het uitvoeren van je programma. Klik op het stop-blokje (zie afbeelding hierboven) om te stoppen met het uitvoeren en terug te gaan naar de bewerkingsmodus.

### Het werkt niet?

Nu kan het gebeuren dat je een tikfout hebt gemaakt in je C# sourcecode. Dat laat Visual Studio zien met dit scherm:
![](figures/vsbuilderror.png "build error")  
Kies altijd voor &quot;No&quot;! Dan kun je terug naar je Visual Studio om te kijken waar je tikfout zit.
![](figures/vstikfout.png "tikfout")
Tikfouten geeft Visual Studio aan met rode kringeltjes onder de woorden.
Net zoals bij Word. Deze zijn soms moeilijk te begrijpen.
Haal dan de regel weg en tik hem opnieuw.
Je kunt ook het programma afsluiten en terug gaan
naar een laatst werkende versie. (Niet opslaan.)

### Hoe verder?

Probeer de designer te openen van Form1 (rechtsklik weer op Form1,
net als bij het openen van de code).
Sleep wat knoppen (buttons), tekst (labels), en dergelijke op je Form1.
Pas de kleur en tekst aan. Maak er iets moois van!
Als je een knop dubbelklikt kun je deze code gebruiken om neer te zetten
dat dan zichtbaar wordt als je op de knop drukt.
(Plak deze code op de lege regel tussen de { en }.)

```cs
MessageBox.Show("Dank je wel voor het klikken!");
```
