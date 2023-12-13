import 'dart:async';

import 'appbar.dart';
import 'astroTools.dart';
import 'screensmain.dart';
import 'dart:io';
import 'package:test/test.dart';

import 'tools.dart';

/*void main() {
  group('neuerSwitch', () {
    test('valid input', () {
      final input = '41\n';
      final output = runZonedGuarded(() => neuerSwitch(input), (e, s) {});
      expect(output, true);
    });

    test('invalid input', () {
      final input = '42\n';
      final output = runZonedGuarded(() => neuerSwitch(input), (e, s) {});
      expect(output, false);
    });
  });
}

bool neuerSwitch(String input) {
  final choice2 = int.tryParse(input.trim()) ?? -1;

  switch (choice2) {
    case 41:
      print('Das wäre die Taschenlampe mit Rotlicht');
      return true;
    default:
      return false;
  }
}*/
void main() {
  test('Test 1', () {
    // Erwartetes Ergebnis
    final expected =
        'Auf diesem Screen haben Sie die Möglichkeit eine Sternenmap und einen astron. Kalender aufzurufen, leider muss er noch in Flutter erstellt werden :-)';

    // Tatsächliches Ergebnis betreffend Funktion "Tools.DISCOVER"
    final result = Tools.DISCOVER;

    // Vergleich der Ergebnisse
    expect(result, expected);
  });
  test('Test 2', () {
    // Erwartetes Ergebnis
    final expected = " Sie sind nun in der zukünftigen AppBar und hätten drei Wahlmöglichkeiten\n"
            "41: Taschenlampe\n"
            "42: Home\n"
            "43: rotes Nachtlicht in der App";

    // Tatsächliches Ergebnis
    final result = AppBar.APPBAR;

    // Vergleich der Ergebnisse
    expect(result, expected);
  });
   test('Test 3', () {
    // Erwartetes Ergebnis
    final expected = ' Auf diesem Screen können Sie eine digitale'+
  " Wasserwaage,einen digitalen Winkelmesser," +
  " einen digitalen Kompass und einen digitalen Polsucher verwenden, "+
  "leider muss er noch in Flutter erstellt werden :-) ";

    // Tatsächliches Ergebnis
    final result = AstroTools.ASTROTOOLS;

    // Vergleich der Ergebnisse
    expect(result, expected);
  });
}


