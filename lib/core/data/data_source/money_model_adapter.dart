import 'package:cashflow/features/money_screen/data/model/money_model.dart';
import 'package:hive_flutter/adapters.dart';

class MoneyModelAdapter extends TypeAdapter<MoneyModel> {
  @override
  final int typeId = 0;

  @override
  MoneyModel read(BinaryReader reader) {
    return MoneyModel(
      income: reader.read(),
      expenses: reader.read(),
      assets: reader.read(),
      debts: reader.read(),
      investments: reader.read(),
      savings: reader.read(),
      canAddIncome: reader.read(),
      canAddExpenses: reader.read(),
      canAddAssets: reader.read(),
      canAddDebts: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, MoneyModel obj) {
    writer.write(obj.income);
    writer.write(obj.expenses);
    writer.write(obj.assets);
    writer.write(obj.debts);
    writer.write(obj.investments);
    writer.write(obj.savings);
    writer.write(obj.canAddIncome);
    writer.write(obj.canAddExpenses);
    writer.write(obj.canAddAssets);
    writer.write(obj.canAddDebts);
  }
}
