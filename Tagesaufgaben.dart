import 'dart:io';


List<String> aufgaben= ["TaskSheet", "Vorlesung", "Tutorium"]; //noch einfügen
int eingabe = 0;
 //DateTime now = DateTime.now();
bool option = false;
bool ausgang = false;

void main (){
print(
"--------------------------------------------------------------\n"
"Welche Aktion soll ausgeführt werden? Schreibe die Zahlen 1-4. \n"
"--------------------------------------------------------------\n"
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
    
    
 

if(option == false) {
   eingabe = int.parse(input); //Validation

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
    if(ausgang != true)
    print("Ungültige Eingabe");
    }
}
}
}

void option1(){
    if(ausgang == true)
    return;

    else{
  //  print("Heute" + " der " + "$date");
    for(int i = 0; i < aufgaben.length; i++){
        print("$i ${aufgaben[i]}");
    }
    }
}

void option2(){
if(ausgang == true)
    return;

    else{
    print("Option 2");
    option1();
    String? input = stdin.readLineSync();
    if(input == null)
    print("Ungültige Eingabe");
    else
    aufgaben.add(input);
    option1();
   // print("$input");
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