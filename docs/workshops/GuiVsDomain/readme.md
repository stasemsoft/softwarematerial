# GUI vs Domain

## Uitgangspunt

Een (mogelijk eerder al gemaakt) programma waar een aantal classes
in zitten en een User Interface (mogelijk Grafisch).
(We gaan hier voor het verhaal uit van een Console-app)

De klant blijkt tevreden en wil een nieuwe versie van het programma:
deze nieuwe versie moet hetzelfde doen, maar dan vanuit een WinForms-app.

## Aanpak

Idee: Toewerken solution met 3 projects: 1 class library, 1 (bv.) WinForms, 1 Console

- MsgBox.Show vs Console.WriteLine
- Console.Readline vs textbox.Text
- Methode die een exception throwt die dan in de GUI wordt opgevangen.
