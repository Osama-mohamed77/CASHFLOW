import 'package:cashflow/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class QuestionFormat extends StatefulWidget {
  final String firstQuestion;
  final String secondQuestion;
  final String thirdQuestion;
  final String category; // الفئة (S أو B أو I)
  final Function(List<bool?> answers) onAnswersChanged;

  const QuestionFormat({
    super.key,
    required this.firstQuestion,
    required this.secondQuestion,
    required this.thirdQuestion,
    required this.category,
     required this.onAnswersChanged,
  });

  @override
  QuestionFormatState createState() => QuestionFormatState();
}

class QuestionFormatState extends State<QuestionFormat> {
  List<bool?> selectedAnswers = [null, null, null]; // تتبع حالة الإجابات

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30.h),
        _buildQuestionRow(widget.firstQuestion, 0),
        Gap(20.h),
        _buildQuestionRow(widget.secondQuestion, 1),
        Gap(20.h),
        _buildQuestionRow(widget.thirdQuestion, 2),
        Gap(30.h),
      ],
    );
  }

  Widget _buildQuestionRow(String question, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                question,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
              ),
            ),
            Gap(5.w),
            Icon(
              Icons.info,
              color: MyColors.myGreen,
              size: 20.r,
            ),
            Gap(5.w),
          ],
        ),
        Gap(10.h), // مسافة بين السؤال والأزرار
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildSelectablePoint("لا", index, false),

            Gap(20.w), // مسافة بين الأزرار
            _buildSelectablePoint("نعم", index, true),
          ],
        ),
      ],
    );
  }

  Widget _buildSelectablePoint(String label, int index, bool isYes) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswers[index] = isYes; // تحديث الإجابة
          widget.onAnswersChanged(selectedAnswers);
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(20.w),
          Container(
            width: 15.w,
            height: 15.h,
            decoration: BoxDecoration(
              color:
                  selectedAnswers[index] == isYes ? Colors.green : Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Gap(5.w),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
          Gap(20.w),
        ],
      ),
    );
  }
}
