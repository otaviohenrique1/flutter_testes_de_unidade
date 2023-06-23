import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
}
