import 'dart:io';


List<String> aufgaben= ["Vorlesung", "TaskSheet", "Tutorium"]; //noch einfügen
int eingabe = 0;
 //DateTime now = DateTime.now();
bool option = false;
bool ausgang = false;
bool zuruck = false;

void main (){
print(
"--------------------------------------------------------------\n"
"Welche Aktion soll ausgeführt werden? Schreibe die Zahlen 1-4. \n"
"--------------------------------------------------------------\n"
"1 Übersicht \n"
"2 Aufgaben hinzufügen \n"
"3 Aufgaben löschen \n"
"4 Aufgaben bearbeiten");

while(ausgang ==false)
{
    zuruck = false;
    String? input = stdin.readLineSync();
    if(input == "exit")
    ausgang = true;
    else if(input == "back"){
    zuruck = true;
    option = false;
    main();}
    else if(input == null)
    input = "0";
    else
    
    
 

if(option == false) {
   eingabe = int.parse(input); //Validation fehlt noch

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
    if(ausgang == true) //Blockt den Aufruf bei der Eingabe Exit
    return;

    else{
  //  print("Heute" + " der " + "$date");
    for(int i = 0; i < aufgaben.length; i++){
        print("$i ${aufgaben[i]}");
    }
    }
}

void option2(){
if(ausgang == true) //Blockt den Aufruf bei der Eingabe Exit
    return;

    else{
        while(zuruck != true){
    print("Aktuelle Liste:");
     option1();
    
   print("Tippe die neue Aufgabe ein");

    String? input = stdin.readLineSync();
    if(input == null)
    print("Ungültige Eingabe");
    else if(input == "back"){
    zuruck = true;
    option = false;
    break;
    }

    else
    aufgaben.add(input);
    }
    }
}

void option3(){
if(ausgang == true) //Blockt den Aufruf bei der Eingabe Exit
    return;

    else{
    print("Option 3");
     for(int i = 0; i < aufgaben.length; i++){
        print("$i ${aufgaben[i]}");
    }
    print("Welche Aufgabe soll gelöscht werden?");
    String? input = stdin.readLineSync() ?? "0";
   
    if(input == null)
    input = "0";
 
 eingabe = int.parse(input); //Validation
    
    if( eingabe < 0 || eingabe > aufgaben.length)
    print("Falsche Eingabe");
    else{
    aufgaben.removeAt(eingabe);
    }
    }
}

void option4(){
if(ausgang == true) //Blockt den Aufruf bei der Eingabe Exit
    return;

    else{
    print("Option 4");
    }

}