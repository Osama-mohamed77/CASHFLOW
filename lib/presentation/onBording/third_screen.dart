import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/providers/answer_provider.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  ThirdScreenState createState() => ThirdScreenState();
}

class ThirdScreenState extends State<ThirdScreen> {
  // قائمة الإجابات للسؤال الأول
  final List<String> firstAnswers = [
    '.من وظيفة أو راتب ثابت',
    '.من عملي الخاص (مقدم خدمات أو استشاري)',
    '.من شركتي أو نظام يعمل من أجلي',
    '.من استثماراتي (أسهم، عقارات، إلخ)',
  ];

  // قائمة الإجابات للسؤال الثاني
  final List<String> secondAnswers = [
    '.تحقيق دخل ثابت وآمن',
    '.الاستقلال المالي من خلال عملي الخاص',
    '.بناء نظام أو شركة تولد الدخل',
    '.زيادة الدخل السلبي من الأصول والاستثمارات',
  ];

  // قائمة الإجابات للسؤال الثالث
  final List<String> thirdAnswers = [
    '.نعم، أحتاج للعمل لكسب المال',
    '.لا، أملك نظامًا أو استثمارات تعمل من أجلي',
  ];

  Widget firstQues(BuildContext context) {
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
              value: answerProvider.firstAnswer,
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

  Widget secondQues(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'ما هي أهدافك المالية الأساسية؟',
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
              value: answerProvider.secondAnswer,
              items: secondAnswers.map((String answer) {
                return DropdownMenuItem<String>(
                  value: answer,
                  child: Text(
                    answer,
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                answerProvider.setSecondAnswer(value); // حفظ النتيجة المختارة
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

  Widget thirdQues(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'هل يعتمد دخلك على جهدك اليومي؟',
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
              value: answerProvider.thirdAnswer,
              items: thirdAnswers.map((String answer) {
                return DropdownMenuItem<String>(
                  value: answer,
                  child: Text(
                    answer,
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                answerProvider.setThirdAnswer(value); // حفظ النتيجة المختارة
              },
              decoration: InputDecoration(
                hintText: '..اختر إجابة',
                hintStyle: TextStyle(color: MyColors.myGrey, fontSize: 14.sp),
                filled: true,
                fillColor: Colors.white, // خلفية بيضاء
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // حواف دائرية
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  // حواف سوداء
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget title(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '؟Cashflow أين أنت في',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.right,
              'أجب عن الأسئلة التالية لتحديد موقعك في\n :المربع المالي',
              style: TextStyle(fontSize: 18.sp),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Gap(200.h),
            title(context),
            Gap(20.h),
            firstQues(context),
            Gap(15.h),
            secondQues(context),
            Gap(10.h),
            thirdQues(context),
          ],
        ),
      ),
    );
  }
}
