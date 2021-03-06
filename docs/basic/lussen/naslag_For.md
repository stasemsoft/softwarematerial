# Naslag basiskennis: For


### for statement

Deze structuur wordt gebruikt om een stukje code een
vooraf bekend aantal keer uit te laten voeren.
Algemene vorm:

```cs
for([teller variabele aanmaken]; [herhalingsconditie]; [teller variabele aanpassen])
{
  [herhaaldelijk uit te voeren code]
}
```

waarbij *[teller variabele aanmaken]*	een `variabele` met
zelf te kiezen variabelenaam wordt aangemaakt en van een waarde voorzien.
Veel gebruikte variabele namen voor een for statement zijn &quot;i&quot;, &quot;j&quot;, &quot;k&quot;
omdat deze een hele korte naam hebben, dat leest in veel gevallen prettig.
Ook &quot;index&quot;, &quot;count&quot; of &quot;teller&quot; worden vaak gebruikt.
Het type variabele is meestal int.
De waarde waarmee de teller wordt gevuld is afhankelijk van wat je
aan het programmeren bent. In veel gevallen heeft deze de waarde `0`.
Voorbeelden:
```cs
int i = 0
```

```cs
int j = 100
```

Dan *[herhalingsconditie]*: deze uit te voeren code wordt
net zo lang herhaald als uit de voorwaarde de waarde `true` komt.
Hierin verwijs je naar de *teller* variabele.
Voorbeelden:
```cs
i < 10
j > 0
```

[teller variabele aanpassen]
	Het verhogen of verlagen van de teller. Vaak wordt deze met 1 verhoogd of verlaagd, soms in grotere stappen (bijv. `10`).
Voorbeelden:
```cs
i = i + 1
j = j – 10
```

[herhaaldelijk uit te voeren code]
	Het stukje code (dit kunnen meerdere regels code zijn) dat moeten worden uitgevoerd zolang de herhalingsconditie &quot;true&quot; (waar) is.
Ieder `for`statement is om te zetten naar een `while` statement
dat hetzelfde doet, en andersom.

### Voorbeelden for statement

```cs
for(int i =0 ; i < 10 ; i = i + 1)
{
	MessageBox.Show("Test");
}
```

Variabele `i` krijgt in het begin de waarde 0 en er wordt direct gestopt als i de waarde 10 krijgt toegekend. De code wordt dus doorlopen met de waarden 0,1,2,3,4,5,6,7,8 en 9. Er worden daarom 10 messagebox-en getoond met de tekst &quot;Test&quot;.
```cs
for(int i =5;i > 0; i = i - 1)
{
	MessageBox.Show("Test");
}
```

Variabele `i` krijgt in het begin de waarde 5 en er wordt direct gestopt als i de waarde 0 krijgt toegekend. De code wordt dus doorlopen met de waarden 5,4,3,2,1. Er worden daarom 5 messagebox-en getoond met de tekst &quot;Test&quot;.
```cs
for(int i =0;i < 10;++i)
{
	MessageBox.Show("Test");
}
```

Hetzelfde resultaat als het eerste voorbeeld,
maar dan in een verkorte schrijfwijze:
```cs
i = i + 1;
```
wordt van oudsher ook wel geschreven als
```cs
i++;
```
of
```cs
++i;
```

Hetzelfde resultaat als het tweede voorbeeld,
maar dan in een verkorte schrijf-wijze:
```cs
for(int i =5;i > 0; --i)
{
	MessageBox.Show("Test");
}
```

```cs
i=i-1;
```
wordt van oudsher ook wel geschreven als
```cs
i--;
```
of
```cs
--i;
```


De code
```cs
for(int i =0;i < 10; ++i)
{
	MessageBox.Show("Test "+i);
}
```
heeft als resultaat dat *MessageBoxes*
verschijnen met achtereenvolgens:
```cs
"Test 0"
"Test 1"
"Test 2"
"Test 3"
"Test 4"
"Test 5"
"Test 6"
"Test 7"
"Test 8"
"Test 9"
```

De code
```cs
for(int i =5;i > 0; i = i - 2)
{
	MessageBox.Show("Test "+i);
}
```
laat messagebox-en verschijnen met achtereenvolgens:
```cs
"Test 5"
"Test 3"
"Test 1"
```
en tot slot geeft
```cs
for(int y =0;y < 2; ++y)
{
  for(int x =0;x < 3; ++x)
  {
    MessageBox.Show("("+x+","+y+")");
  }
}
```
als resultaat *MessageBoxes* verschijnen met:
```cs
"(0,0)"
"(1,0)"
"(2,0)"
"(0,1)"
"(1,1)"
"(2,1)"
```
