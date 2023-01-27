import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/features/home/homescreen/screenmetas_state.dart';
import '../../../shared/classes.dart';
import '../../transactions/metas/metas_model.dart';
import '../../transactions/metas/metas_repository.dart';
import '../../transactions/metas/metas_state.dart';
import '../../transactions/transactions_repository.dart';
import '../homelogin/homelogin_repository.dart';

class MetaScreenController {
  final HomeLoginRepository _loginRepository;
  final MetasRepository _metasRepository;
  MetaScreenController(this._loginRepository, this._metasRepository);
  final notifier = ValueNotifier<MetaState>(MetasInitialState());

  MetaState get stateScreen => notifier.value;

  Future<void> getMetas() async {
    notifier.value = MetasInitialState();
    try {
      final userId = _loginRepository.currentUser?.uid ?? '';
      final result = await _metasRepository.getMetas(userId);
      notifier.value = MetasSuccessState(result);
    } catch (e) {
      notifier.value = MetasErrorState();
    }
  }

  Future<void> getIdMetas(String id) async {
    try {
      final result = await _metasRepository.getIdMetas(id);
      notifier.value = MetasSuccessState(result);
    } catch (e) {
      notifier.value = MetasErrorState();
    }
  }

  Future<void> updateMetas(String id, String goal, String objective,
      double value, DateTime date, String icon, double perfomance) async {
    final userId = _loginRepository.currentUser?.uid ?? '';
    try {
      final todoMetasRequest = MetasModel(
        id: id,
        goal: 'meta',
        objective: objective,
        value: value,
        date: date,
        idUser: userId,
        icon: icon,
        perfomance: perfomance,
      );
      await _metasRepository.updateMetas(todoMetasRequest);
      final result = await _metasRepository.getMetas(id);
      notifier.value = MetasSuccessState(result);
    } catch (e) {
      notifier.value = MetasErrorState();
    }
  }

  Future<void> deleteMeta(String id) async {
    try {
      final result = await _metasRepository.deleteMeta(id);
      if (result) {
        final todoMetas = (stateScreen as MetasSuccessState).todoMetas;
        todoMetas.removeWhere((todo) => todo.id == id);
        notifier.value = MetasSuccessState(todoMetas);
      }
    } catch (e) {
      log("Registro não removido");
    }
  }
}

class BalanceController {
  final TransactionsRepository _transactionsRepository;
  BalanceController(this._transactionsRepository);

  final notifierRevenues = ValueNotifier<ScreenGlobalState>( ScreenGlobalInitialState());  

  final notifierBalance = ValueNotifier<ScreenBalanceState>(ScreenBalanceInitialState());
  
  
  ScreenGlobalState get stateRevenues => notifierRevenues.value;
  ScreenBalanceState get stateBalance => notifierBalance.value;
 

  Future<void> getBalanceRevenues() async {    
    try {
      final balances = await _transactionsRepository.getBalanceRevenues();
      print(balances);
      double soma = 0.0;
      for (var balance in balances) {
        soma = soma + balance.balance;
      }
      print(soma);
      notifierRevenues.value = ScreenGlobalSuccessState(soma);
    } catch (e) {
      notifierRevenues.value = ScreenGlobalErrorState();
    }
  }

  Future<void> controllerData( int botton, int dia, int mes, int ano)  async {    
    try {
      if (botton == 0) {
        final controleWidget = await _transactionsRepository.getBalanceUser(mes, ano);
        notifierBalance.value = ScreenBalanceSuccessState(controleWidget);    
        
      } else if (botton == 1) {
        //Controle para frente
        DateTime dataAjustada = clickProximoMes(ano, mes, dia);
        final controleWidget = await _transactionsRepository.getBalanceUser(dataAjustada.month, dataAjustada.year);
        notifierBalance.value = ScreenBalanceSuccessState(controleWidget); 
        
      } else if (botton == 2){
        //Controle para trás
        DateTime dataAjustada = clickMesAnterior(ano, mes, dia); 

        final controleWidget = await _transactionsRepository.getBalanceUser(dataAjustada.month, dataAjustada.year);
        notifierBalance.value = ScreenBalanceSuccessState(controleWidget);      
      } 
    } catch (e) {
      notifierBalance.value = ScreenBalanceErrorState(); 
    }
  }
 
} //balanceController

DateTime clickProximoMes(int ano, int mes, int dia) {
  if (mes > 12) {
    ano++;
    mes = 1;
  } else {
    mes++;
  }
  DateTime novaData = DateTime(ano, mes, dia);
  return novaData;
}

// Função que passa para o mês anterior
DateTime clickMesAnterior(int ano, int mes, int dia) {
  if (mes < 1) {
    ano--;
    mes = 12;
  } else {
    mes--;
  }
  DateTime novaData = DateTime(ano, mes, dia);
  return novaData;
}

// String getCurrentMonth() {
//   return 'Novembro';
// }

// String getNextMonth() {
//   return 'Dezembro';
// }

// String getPreviousMonth() {
//   return 'Outubro';
// }

// void showPreviousWallet() {}

// void showNextWallet() {}

// void deleteWallet() {}

// void editWallet() {}

// void showPreviousGoal() {}

// void showNextGoal() {}

// void deleteGoal() {}

// void editGoal() {}

// void addExpense() {}

// void addRevenue() {}
