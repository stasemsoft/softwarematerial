# Training - Pincode reminder

Een pincode is vaak moeilijker te onthouden dan een wachtwoord, en de bank raadt je af je pincode ergens te noteren om te voorkomen dat iemand er gemakkelijk met je geld vandoor gaat. Het zou handig zijn om een programma te hebben waarmee je met het invoeren van het juiste wachtwoord je pincode te zien krijgt. Een zelfgekozen wachtwoord is immers vaak een stuk gemakkelijker te onthouden dan een pincode.

## Opdracht
Maak in je nieuwe project een grafische user interface voor het programma waarmee je een wachtwoord kunt invoeren in een textbox en je invoer kunt bevestigen met een button. Verder moeten er twee labels gemaakt worden waarmee je de gebruiker voorziet van informatie als op de knop gedrukt is: als het wachtwoord juist is wordt de ene tekst zichtbaar, als het wachtwoord onjuist is wordt de andere tekst zichtbaar.

Je user interface zou er bijvoorbeeld zo uit kunnen zien:

![Aangeleverd ontwerp user interface](figures/Pincode-reminder-ui.png)

Geef, zoals je in een eerdere opdracht gedaan hebt, de objecten die je gebruikt een duidelijke naam. Als je straks namelijk code toe gaat voegen is het handiger om te werken met namen als **labelRight**, **labelWrong** en **showPincodeButton** dan met namen als **label1**, **label2** en **button1**.

### Tips
- Zorg dat de zichtbaarheidseigenschap (**Visibility**) van de objecten goed wordt ingesteld.
- Zorg dat de EventHandler voor de Buttonwordt aangemaakt en voorzien van code zodanig dat het programma doet wat het zou moeten doen.
- Als je iets onzichtbaar maakt zie je dit niet direct in de editor maar pas als je het programma draait.
- Door te dubbelklikken op de knop kun je de voor de Button meest gebruikte **EventHandler**, namelijk “Click” (lees: de gebruiker heeft op de knop geklikt), automatisch aanmaken. Je zult zien dat je daardoor direct in een nog niet ingevulde methode in de programmacode van je formulier springt.

## Uitbreidingen
- Niveau * - Zorg dat als het wachtwoord wordt ingevoerd alleen sterretjes/bolletjes te zien zijn (dit is een **Property** van een TextBox). Ook moet, nadat de invoer gecontroleerd is de tekst in het wachtwoord-tekstvak altijd leeg worden gemaakt (of het wachtwoord nu klopt of niet).
- Niveau *** - Zorg dat het programma gebruikt kan worden door twee personen (gebruikers). Er moet niet alleen gevraagd worden om een wachtwoord, maar om een naam -en- een wachtwoord. Pas als de combinatie naam/wachtwoord klopt wordt de pincode voor die gebruiker getoond.

## Checklist
Als je de opdracht op de juiste manier hebt uitgevoerd heb je voldaan aan onderstaande punten: 
- Bij het starten van het programma zijn de pincode en de foutmelding onzichtbaar. 
- Alleen als het wachtwoord klopt wordt de pincode getoond, anders de foutmelding. 
- Als je na het invoeren van een fout wachtwoord het goede intypt moet het programma nog naar behoren werken. 
- Als je na het invoeren van het juiste wachtwoord een verkeerd wachtwoord invoert moet het programma nog naar behoren werken.
- Je code is duidelijk te lezen doordat je de objecten duidelijke namen hebt gegeven.
- De GUI ziet er verzorgd uit (duidelijke teksten, goede uitlijning).
- Uitbreiding a: De getoonde pincode hoort bij de betreffende gebruiker
- Uitbreiding b: Bij het invoeren van het wachtwoord zie je alleen sterretjes/bolletjes in het tekstvak verschijnen.
- Uitbreiding b: Na een druk op de knop wordt altijd het tekstvak automatisch leeggemaakt, of het wachtwoord nu goed is of niet.