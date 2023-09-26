
import 'package:flutter_test/flutter_test.dart';
import 'package:list_filme/modules/home/repository.dart';

void main() {
  test("description", (() async{
    final repository = FilmesRepository();
    final lista = await repository.getFilmes();
    print("lista");
  })
  );
}