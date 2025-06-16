import 'dart:io';

List<String> aufgaben= []; //noch einfügen
int eingabe = 0;
bool option = false;
bool ausgang = false;

void main (){
print("Welche Aktion soll ausgeführt werden? \n"
"1 Übersicht \n"
"2 Aufgaben hinzufügen \n"
"3 Aufgaben löschen \n"
"4 Aufgaben bearbeiten"); //Maybe zusammenfassen

while(ausgang ==false)
{
    String? input = stdin.readLineSync();
    if(input == "exit")
    ausgang = true;
    else if(input == "back"){
    option = false;
    main();}
    else if(input == null)
    input = "0";
    else
    
    
    eingabe = int.parse(input); //Validation

if(option == false) {
    switch(eingabe) {
    case 1:
    option = true;
    option1();
    case 2:
    option = true;
    option2();
    case 3:
    option = true;
    option3();
    case 4:
    option = true;
    option4();
    default:
    print("Ungültige Eingabe");
    }
}
}
}

void option1(){
    if(ausgang == true)
    return;

    else{
    print("Option 1");
    }
}

void option2(){
if(ausgang == true)
    return;

    else{
    print("Option 2");
    }
}

void option3(){
if(ausgang == true)
    return;

    else{
    print("Option 3");
    }
}

void option4(){
if(ausgang == true)
    return;

    else{
    print("Option 4");
    }

}