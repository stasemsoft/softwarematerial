# Reference: Methods in OOP C#

Zoals je uit het orienterende gedeelte uit deze course weet, is een method een stukje code dat vanuit een ander stukje code is aan te roepen. Een voorbeeld van de methode CalcInterest:

```cs
    public double CalcInterest(double interest, double investment)
    {
        return investment * ( 1 + interest);
    }

    double interest = CalcInterest(0.03, 1000);//1030.00
```

Met deze methode bereken je de interest (rente) van een investment (bedrag). Deze getallen geef je dmv de parameters **interest** en **investment** door.

Methods worden ook veel gebruikt in classes. Hoe zou die eruit kunnen zien?

```cs
    public BankAccount
	{
	   //property
	   public double Investment{ get; }
	   
	   //constructor
	   public BankAccount(double investment)
       {
	       this.Investment = investment;
       }
	   
	   //HIER STAAT DE METHOD
	   public double CalcInterest(double interest)
       {
          return this.Investment * ( 1 + interest);
       }
	}
	
	public Form
	{
	   public Form()
       {
          BankAccount bankaccount = new BankAccount(1000);//bankaccount object declareren
          double interest = bankaccount.CalcInterest(0.03);
       }
	}

```

Zoals je ziet is er van alles bij gekomen. Ten eerste is er de class **BankAccount** gemaakt. De method **CalcInterest** hoort bij deze class. Met deze method kan de rente berekend worden van jouw bankaccount. 
De method lijkt nog veel op de oude method, maar er zijn een paar kleine aanpassingen. 
1. De parameter Investment is verdwenen. Die geven we nu niet meer meer in de method, maar halen we uit de property (public double Investment) van de class. Hierdoor hoeven die niet steeds mee te geven.
2. Het aanroepen gaat iets anders. Je moet eerst een bankaccount object declareren en daarna kan je pas de method aanroepen (bankaccount.CalcInterest)
3. Je ziet een paar keer **this** voorbij komen. Naar wat verwijst dat? **this** verwijst altijd naar een property of method in de class zelf.