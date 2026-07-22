import 'package:cashflow/features/onBording/ui/widgets/third_screen_widgets/ques_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/my_colors.dart';
import '../../../../../core/data/logic/answer_provider.dart';

class FirstQues extends StatelessWidget {
  const FirstQues({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'كيف تحصل على معظم دخلك؟',
              style: TextStyle(fontSize: 18.sp),
            ),
          ],
        ),
        Gap(10.h),
        Consumer<AnswerProvider>(
          builder: (context, answerProvider, child) {
            return DropdownButtonFormField<String>(
              dropdownColor: Colors.white,
              iconEnabledColor: Colors.black,
              initialValue: answerProvider.firstAnswer,
              items: firstAnswers.map((String answer) {
                return DropdownMenuItem<String>(
                  value: answer,
                  child: Text(
                    answer,
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                answerProvider.setFirstAnswer(value); // حفظ النتيجة المختارة
              },
              decoration: InputDecoration(
                hintText: '..اختر إجابة',
                hintStyle: TextStyle(color: MyColors.myGrey, fontSize: 14.sp),
                filled: true,
                fillColor: Colors.white, // خلفية بيضاء
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r), // حواف دائرية
                  borderSide: const BorderSide(
                      color: Colors.black, width: 1), // حواف سوداء
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}