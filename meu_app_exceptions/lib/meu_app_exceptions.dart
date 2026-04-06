import 'dart:convert';
import 'dart:io';

import 'package:meu_app_exceptions/models/aluno.dart';
import 'package:meu_app_exceptions/models/console_utils.dart';

void execute(){
  print("Sistema de notas");
  String nome = ConsoleUtils.lerStringComContexto("Diite o nome do Aluno:");
  var aluno  = Aluno(nome);
  double? nota;

  do{
    nota = ConsoleUtils.lerDoubleComTextoESaida("Digite a nota do Aluno ou 's' para sair:", "S");
    if (nota != null){
      aluno.adicionarNota(nota);
    }
  }while(nota!= null);

  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A Média do aluno foi :${aluno.retornaMedia()}");
  if(aluno.aprovado(7)){
    print("O aluno${aluno.getNome()}  foi aprovado");
  }else{
    print("Aluno Reprovado");
  }
  
}