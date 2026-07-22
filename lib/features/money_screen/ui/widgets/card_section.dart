import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSection extends StatelessWidget {
  final String title;
  final double value;
  final IconData icon;
  final Color color;
  final bool canAdd;
  final VoidCallback onAdd;
  final VoidCallback onEdit;

  const CardSection({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    required this.canAdd,
    required this.onAdd,
    required this.onEdit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF444444),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF444444),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF3C3A3A),
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(
                icon,
                color: color,
                size: 30.r,
              ),
              title: Text(title,
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              subtitle: Text(
                textAlign: TextAlign.right,
                value.toStringAsFixed(2),
                style: TextStyle(color: Colors.white70, fontSize: 15.sp),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.add_circle,
                      color: canAdd ? Colors.white : Colors.grey),
                  onPressed: canAdd ? onAdd : null,
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.white),
                  onPressed: onEdit,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
