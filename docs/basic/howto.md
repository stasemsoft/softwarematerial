# How To ...  (veel voorkomende vragen)

Hoe kan ik in een WinForm-app met meerdere Forms vanuit het ene Form het andere openen?
Het antwoord op deze en nog veel meer vragen:
[How to...](howto)

## WinForms

### Meerdere Forms in een app

Als je in een WinForms-app de `Program.cs` opent zie je soortgelijke code als:

```
static void Main()
{
    Application.EnableVisualStyles();
    Application.SetCompatibleTextRenderingDefault(false);
    Application.Run(new MyMainForm());
}
```
waarbij `MyMainForm` de naam is van je Form. Bij het opstarten van je app wordt met `new MyMainForm` een form aangemaakt. Vanuit dit form kun je het mainform zelf (`this`) `hidden` maken. Vervolgens een ander form aanmaken en daar de method `ShowDialog()` van aanroepen:

```
   this.hide();  
   SecondForm otherForm = new SecondForm();
   otherForm.ShowDialog();
```


## Bron


[how-to-open-a-second-form](https://www.c-sharpcorner.com/UploadFile/5d065a/how-to-open-a-second-form-using-first-form-in-window-form/)
