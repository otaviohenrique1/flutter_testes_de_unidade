import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testes_de_unidade/models/bank.dart';

void main() {
  /* Testes de unidade */
  group('Bank model deposit tests', () {
    test('Bank model deposit should turns points into 10', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.points, 10);
    });

    test('Bank model deposit should turn available into 10', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.available, 10);
    });
  });

  /* Testes de unidade */
  test('Bank model transfer should turns points into 10', () {
    final bank = BankModel();
    bank.transfer(10);
    expect(bank.points, 10);
  });
}
