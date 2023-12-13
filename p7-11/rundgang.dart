import 'dart:convert';
// Import der json Datei
import 'dart:io';
//Arbeiten (Eingabe und Ausgabe) mit dem Terminal

class Rundgang {
  String? key;
  String? value;

  Rundgang(this.key, this.value);

  factory Rundgang.fromJSON(Map<String, dynamic> json) {
    return Rundgang(json["key"] as String, json["value"] as String);
  }
  // Ein json Objekt wird als Eingabe entgegengenommen und erstellt ein Objekt
  static void rundgang() {
    main();
  }
}

void main() {
  final file = File('rundgang.json');
  //Variable file vom Datentyp File, verwendung um auf die json Datei zuzugreifen

  final jsonString = file.readAsStringSync();
  final jsonList = json.decode(jsonString) as List<dynamic>;
  //In dieser Funktion wird dedr json String umgewandelt in ein Dart String und wird an die Liste zurück gegeben
  final rundgangs = jsonList.map((json) => Rundgang.fromJSON(json)).toList();

  final keys = rundgangs.map((R) => R.key).toList();
  final values = rundgangs.map((R) => R.value).toList();

  print('Wählen Sie ein Thema:');
  for (var i = 0; i < keys.length; i++) {
    // Die for Schleife läuft über die Liste keys drüber, Ausgabe des jeweiligen Index und Schlüssel
    print('${i + 1}. ${keys[i]}');
    //Abruf der Schlüsselwertpaare aus der json Datei
  }

  final choice = int.parse(stdin.readLineSync()!);
  print('${keys[choice - 1]} => ${values[choice - 1]}.');

  if (!file.existsSync()) {
    print('Die Datei existiert nicht.');
    return;
  }
}
