import 'package:cashflow/features/ideas_screen/ui/widgets/appbar_idea_screen.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/employee_text_and_books.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/employer_ideas_text_and_books.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/freelancing_ideas_text_and_books.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/investor_ideas_text_and_books.dart';
import 'package:flutter/material.dart';
import 'package:cashflow/constants/my_colors.dart';

class IdeasScreen extends StatefulWidget {
  const IdeasScreen({super.key});
  static String id = 'Ideas';

  @override
  State<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends State<IdeasScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppbarIdeaScreen()),
      backgroundColor: MyColors.myBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              EmployeeTextAndBooks(),
              FreelancingIdeasTextAndBooks(),
              EmployerIdeasTextAndBooks(),
              InvestorIdeasTextAndBooks()
            ],
          ),
        ),
      ),
    );
  }
}
