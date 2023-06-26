import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testes_de_unidade/components/box_card.dart';
import 'package:flutter_testes_de_unidade/data/bank_http.mocks.dart';
import 'package:flutter_testes_de_unidade/data/bank_inherited.dart';
import 'package:flutter_testes_de_unidade/screens/home.dart';
import 'package:mockito/mockito.dart';

/* Teste automatico */
void main() {
  final MockBankHttp httpMock = MockBankHttp();
  testWidgets('My widgets has a text "Spent"', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((realInvocation) async => ("5"));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: Home(api: httpMock.dolarToReal())),
    ));
    final spentFinder = find.text("Spent");
    expect(spentFinder, findsOneWidget);
  });

  testWidgets('Finds a LinearProgressIndicator', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((realInvocation) async => ("5"));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: Home(api: httpMock.dolarToReal())),
    ));
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  testWidgets('Finds a AccountStatus', (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((realInvocation) async => ("5"));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: Home(api: httpMock.dolarToReal())),
    ));
    expect(find.byKey(const Key("testKey")), findsOneWidget);
  });

  testWidgets("Finds 5 BoxCards", (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((realInvocation) async => ("5"));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: Home(api: httpMock.dolarToReal())),
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
    when(httpMock.dolarToReal()).thenAnswer((realInvocation) async => ("5"));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: Home(api: httpMock.dolarToReal())),
    ));
    await tester.tap(find.text("Deposit"));
    await tester.tap(find.text("Earned"));
    await tester.pumpAndSettle();
    expect(find.text("\$10.0"), findsOneWidget);
  });

  testWidgets("Testing MockHttp dolarToReal", (tester) async {
    when(httpMock.dolarToReal()).thenAnswer((realInvocation) async => ("5"));
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(child: Home(api: httpMock.dolarToReal())),
    ));
    verify(httpMock.dolarToReal()).called(1);
  });
}
