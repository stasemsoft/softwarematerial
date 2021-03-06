# Naslag basiskennis: While

#### while statement

Deze structuur wordt gebruikt om een stukje code uit te voe-ren
zolang aan bepaalde voorwaarden is voldaan.
Dit varieert van `0` keer de code uitvoeren tot het
in de oneindigheid aantal keer uitvoeren van de code).
Algemene vorm:

```cs
while ([conditie])
{
  [Uit te voeren code zolang de conditie waar is]
}
```

<p class="note">Na de eerste regel staat geen &quot;;&quot; teken.</p>
<p class="note">Eerst wordt gecontroleerd of aan een voorwaarde is voldaan, dan pas wordt eventueel code uitgevoerd.</p>
#### do while statement

Deze structuur wordt gebruikt om een stukje code uit te voeren. Elke keer nadat het stukje code is uitgevoerd wordt gecontroleerd of nog aan bepaalde voorwaarden is voldaan, zo ja, dan wordt de code opnieuw uitgevoerd. Het aantal keer uitvoeren van de code varieert van 1 keer de code uitvoeren tot het in de oneindigheid aantal keer uitvoeren van de code.
Algemene vorm:

```cs
do
{
  [Uit te voeren code zolang de conditie waar is]
} while ([conditie]);
```

Na de laatste regel staat een &quot;;&quot; teken.

Eerst wordt de code één keer uitgevoerd, dan pas wordt gecontroleerd of de code eventueel vaker moet worden uitgevoerd.

### Voorbeelden while en do while statement

```cs
int i = 0;
while(i < 10)
{
	MessageBox.Show("Test");
  i = i + 1;
}
```

Variabele *i* krijgt in het begin de waarde `0`
en er wordt net zo lang doorgegaan met *MessageBoxes* weergeven
totdat *i* kleiner dan `10` is.
De code wordt dus doorlopen met achtereenvolgens
de waarden `0` , `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8` en `9`.
Er worden daarom `10` *Messageboxes* getoond met de tekst `"Test"`.

```cs
int i = 5;
while(i > 0)
{
	MessageBox.Show("Test");
  i = i – 1;
}
```

Variabele *i* krijgt in het begin de waarde `5` en er wordt
direct gestopt als *i* de waarde `0` krijgt toegekend.
De code wordt dus doorlopen met
de waarden `5`, `4`, `3`, `2`, `1`.
Er worden daarom `5` *Messageboxes* getoond met de tekst `"Test"`.

```cs
int i = 10;
do
{
	MessageBox.Show("Test");
  i = i + 1;
}
while (i < 5);
```

Variabele *i* krijgt in het begin de waarde `10`,
de code wordt uitgevoerd, en vervolgens
wordt net zo lang doorgegaan met *Messageboxes* weergeven
totdat *i* kleiner dan `5` is.
De code wordt dus doorlopen met de waarde `10`.
Er wordt daarom `1` *Messagebox* getoond met de tekst `"Test"`.
