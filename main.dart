import 'dart:io';

Future<void> main() async {
  int sum = 0;

  print("Escolha um número: ");
  try {
    var inputNum = stdin.readLineSync();
    if (inputNum == null) throw "É necessário escolher um número";
    int num = int.parse(inputNum);

    if (num < 0) throw "O número precisa ser positivo";

    for (int n = 0; n < num; n++) {
      if (isMultiPleOf3or5(n)) {
        sum += n;
      }
    }
    print("Soma: $sum");
  } on FormatException catch (_) {
    print("Entrada inválida");
  } catch (e) {
    print(e);
  }

  print('\n\nFinalizando programa automaticamente em 5 segundos');
  print('Ou, pressione CRTL + C ou pra sair');
  await Future.delayed(Duration(seconds: 5));
}

/// Return `true` if number is multiple of 3 or 5.
bool isMultiPleOf3or5(int num) {
  return (num % 3 == 0) || (num % 5 == 0);
}
