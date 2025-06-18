import 'dart:io';

List<String> aufgaben = ["Vorlesung", "TaskSheet", "Tutorium"]; //noch einfügen
int eingabe = 0;
DateTime now = DateTime.now();
String date =
    "${now.day.toString().padLeft(2, '0')}.${now.month.toString().padLeft(2, '0')}.${now.year}";
bool option = false;
bool ausgang = false;
bool zuruck = false;

void main() {
  //Menüausgabe
  print(
    "--------------------------------------------------------------\n"
    "Welche Aktion soll ausgeführt werden? Schreibe die Zahlen 1-4. \n"
    "--------------------------------------------------------------\n "
    "\n "
    "1 Übersicht der Aufgaben \n "
    "2 Aufgaben hinzufügen \n "
    "3 Aufgaben löschen \n ",
    //"4 Aufgaben bearbeiten \n " Wenn noch Zeit ist
  );

  //Ist immer im Hintergrund für Keyswords und das Menü
  while (!ausgang) {
    zuruck = false;
    String? input = stdin.readLineSync();

    //Abfrage nach bestimmten Keyswords
    if (input == "exit")
      ausgang = true;
    else if (input == "back") {
      zuruck = true;
      option = false;
      main();
    } else if (input == null)
      input = "0";
    else
    //Überprüft wegen Text
    if (!option) {
      if (int.tryParse(input) != null) eingabe = int.parse(input);

      //Auswahl der Aktionen
      switch (eingabe) {
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
          if (!ausgang) print("Ungültige Eingabe");
      }
    }
  }
}

//Aufgabenübersicht
void option1() {
  if (ausgang) //Blockt den Aufruf bei der Eingabe Exit
    return;
  else {
    //Datumsangabe
    print("Heute der " + "$date");
    print("---Aktuelle Aufgabenliste---");
    //Aufreihung der Inhalte
    for (int i = 0; i < aufgaben.length; i++) {
      print("${i + 1} ${aufgaben[i]}");
    }
  }
}

void option2() {
  if (ausgang) //Blockt den Aufruf bei der Eingabe Exit
    return;

   

  else {
    

    while (!zuruck) {
      

      //Aufruf der Übersicht
      option1();

      print("Tippe die neue Aufgabe ein");

      String? input = stdin.readLineSync();
      if (input == null)
        print("Ungültige Eingabe");
      else if (input == "back") {
        zuruck = true;
        option = false;
        break;
      } else if (input == "exit") {
        ausgang = true;
        break;
      } 
      else
        aufgaben.add(input);
       
    }
     if (zuruck) {
      main();}
  }
}

void option3() {
  if (ausgang) //Blockt den Aufruf bei der Eingabe Exit
    return;
  else {
    print("Option 3");
    option1();
    print("Welche Aufgabe soll gelöscht werden?");
    String? input = stdin.readLineSync();

    if (input == null) input = "0"; //noch verändern

    eingabe = int.parse(input); //Validation

    if (eingabe < 0 || eingabe > aufgaben.length)
      print("Falsche Eingabe");
    else {
      aufgaben.removeAt(eingabe);
    //  print("AUfgbae entfernt");
     // main();
    }
    
  }
}

void option4() {
  if (ausgang) //Blockt den Aufruf bei der Eingabe Exit
    return;
  else {
    print("Option 4");
  }
}
