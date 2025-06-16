import 'dart:io';

List<String> aufgaben= [];
int eingabe = 0;
bool ausgang = false;

void main (){
print("Welche Aktion soll ausgeführt werden? \n"
"1 Übersicht \n"
"2 Aufgaben hinzufügen \n"
"3 Aufgaben löschen \n"
"4 Aufgaben bearbeiten");

while(ausgang ==false)
{
    String input = stdin.readLineSync() ?? "0";
    eingabe = int.parse(input); //Validation

    switch(eingabe) {
    case 1:
    option1();
    case 2:
    print("Test2");
    ausgang = true;
    default:
    print("Ungültige Eingabe");
    }
}
}
void option1(){
    print("Testttt");

}