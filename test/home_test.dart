import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testes_de_unidade/components/box_card.dart';
import 'package:flutter_testes_de_unidade/data/bank_inherited.dart';
import 'package:flutter_testes_de_unidade/screens/home.dart';

/* Teste automatico */
void main() {
  testWidgets('My widgets has a text "Spent"', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: const Home()),
    ));
    final spentFinder = find.text("Spent");
    expect(spentFinder, findsOneWidget);
  });

  testWidgets('Finds a LinearProgressIndicator', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: const Home()),
    ));
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('Finds a AccountStatus', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: const Home()),
    ));
    expect(find.byKey(const Key("testKey")), findsOneWidget);
  });

  testWidgets("Finds 5 BoxCards", (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: const Home()),
    ));
    expect(find.byWidgetPredicate((widget) {
      if (widget is BoxCard) {
        return true;
      } else {
        return false;
      }
    }), findsNWidgets(5));
  });

  testWidgets("When tap Deposit should upload earned in 10 points",
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: const Home()),
    ));
    await tester.tap(find.text("Deposit"));
    await tester.tap(find.text("Earned"));
    await tester.pumpAndSettle();
    expect(find.text("\$10.0"), findsOneWidget);
  });
}
