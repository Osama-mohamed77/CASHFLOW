import 'package:cashflow/cash_flow_app.dart';
import 'package:cashflow/core/data/data_source/money_model_adapter.dart';
import 'package:cashflow/core/data/models/answers_model.dart';
import 'package:cashflow/core/data/repos/answers_repo.dart';
import 'package:cashflow/features/money_screen/data/model/money_model.dart';
import 'package:flutter/material.dart';
import 'package:cashflow/core/data/logic/answer_provider.dart';
import 'package:cashflow/features/home/logic/home_provider.dart';
import 'package:cashflow/features/money_screen/logic/money_provider.dart';
import 'package:cashflow/core/data/logic/page_index_provider.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MoneyModelAdapter());
  await Hive.openBox<MoneyModel>('moneyBox');
  final MoneyProvider moneyProvider = MoneyProvider();
  await moneyProvider.loadMoneyData();
  final AnswerModel answerModel = AnswerModel();
  final AnswerRepo answerRepo = AnswerRepo(answerModel);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageIndexProvider()),
        ChangeNotifierProvider(create: (_) => AnswerProvider(answerRepo)),
        ChangeNotifierProvider(create: (_) => MoneyProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const CashFlow(),
    ),
  );
}
