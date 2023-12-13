import 'dart:convert';
import 'dart:io';

class _Registration {}

void main() async {
  String name = readName();

  if (name.length > 0) {
    Map<String, dynamic> jsonMap = {};
    File file = File("registration.json");
    if (!file.existsSync()) {
      file = await file.create(exclusive: true);
    }
    String content = await file.readAsString();
    if (content.length > 0) {
      jsonMap = json.decode(content);
    }
    if (jsonMap["name"] != null) {
      List<String> names = jsonMap["name"].toList().cast<String>();
      names.add(name);
      jsonMap["name"] = names;
    } else {
      List<String> names = [name];
      jsonMap["name"] = names;
    }
    file.writeAsStringSync(json.encode(jsonMap));
  }
}

String readName() {
  print("Bitte eine Email Adresse eingeben:");
  return stdin.readLineSync() ?? "";
}
