import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/home/logic/home_provider.dart';
import 'package:cashflow/features/home/ui/widgets/question_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BoxBottomSheet extends StatelessWidget {
  List<bool?> answers = [null, null, null];
  final String firstQuestion;
  final String secondQuestion;
  final String thirdQuestion;
  final String category;
   BoxBottomSheet(
      {super.key,
      required this.firstQuestion,
      required this.secondQuestion,
      required this.thirdQuestion
      , required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.myCloseCategory,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 150.0.w),
              child: Divider(
                color: Colors.white,
                thickness: 4.r,
                height: 40.h,
              ),
            ),
            QuestionFormat(
              firstQuestion: firstQuestion,
              secondQuestion: secondQuestion,
              thirdQuestion: thirdQuestion,
              category: '',
              onAnswersChanged: (newAnswers) {
                answers = newAnswers;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (answers.contains(null)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("من فضلك أجب على جميع الأسئلة"),
                    ),
                  );
                  return;
                }

                if (answers.every((e) => e == true)) {
                  Provider.of<HomeProvider>(
                    context,
                    listen: false,
                  ).openNextCategory(
                    category,
                    answers,
                  );
                }

                Navigator.pop(context);
              },
              child: const Text("حفظ الإجابات"),
            )
          ],
        ),
      ),
    );
  }
}
