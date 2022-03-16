import 'dart:io';

void main(List<String> arguments) {
  int bilangan = 0;
  int temp = 1;

  stdout.write('Input suatu bilangan: ');
  String? dtInput = stdin.readLineSync();
  bilangan = int.parse(dtInput!);
  stdout.write('Faktor dari ${bilangan} adalah ');

  while (temp <= bilangan) {
    if (bilangan % temp == 0) {
      if (temp == bilangan) {
        stdout.write('${temp} ');
      } else {
        stdout.write('${temp}, ');
      }
    }
    temp++;
  }
  print(" ");
}
