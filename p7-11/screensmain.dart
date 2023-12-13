import 'dart:io';
import 'rundgang.dart';
import 'tools.dart';
import 'projects.dart';
import 'astroTools.dart';
import 'menue.dart';
import 'appbar.dart';

class MainScreen {}

void main() {
  print('Sie befinden sich auf dem Hauptscreen der App.Bitte einen Screen wählen \n'
      '1. Erkunde das All mit weiteren Tools\n'
      '2. Meine astron. Projekte\n'
      '3.Astronom.Werkzeuge\n'
      '4.AppBar\n'
      '5.Erkunde die App und Einstellungen\n'
      // Mit dieser Wahl wird die Datei "rundgang.dart" aufgerufen, die die Werte in der Datei "rundgang.json" gespeichert hat
      '6.Menü\n');

  bool isValidInput = false;
  do {
    String select = stdin.readLineSync() ?? '';
    int choice = int.tryParse(select) ?? -1;

    switch (choice) {
      case 1:
        print(Tools.DISCOVER);
        isValidInput = true;
        break;

      case 2:
        print(Projects.PROJECTS);
        isValidInput = true;
        break;

      case 3:
        print(AstroTools.ASTROTOOLS);
        isValidInput = true;
        break;

      case 4:
        print(AppBar.APPBAR);
        isValidInput = neuerSwitch();
        break;

      case 5:
        print("Sie befinden sich auf dem Screen \"Erkunde die App\"");
        Rundgang.rundgang();
        break;

      case 6:
        print(Menue.MENUE);
        isValidInput = true;
        break;

      default:
        print("Sie haben keine gültige Auswahl getroffen, bitte wiederholen Sie ihre Eingabe");
    }
  } while (!isValidInput);
}

bool neuerSwitch() {
  String select = stdin.readLineSync() ?? '';

  int choice2 = int.tryParse(select) ?? -1;

  switch (choice2) {
    case 41:
      print(" Das wäre die Taschenlampe mit Rotlicht");
      return true;

    default:
      return false;
  }
}
