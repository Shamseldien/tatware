import 'package:flutter/material.dart';
import 'package:tatware/shared/styles/colors.dart';
class ItemBuilder extends StatelessWidget {
  String? name;

  ItemBuilder(this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.circleColor,
              ),
            ),
            Positioned(
              right: 10,
              top: 15,
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Text('$name')
      ],
    );
  }
}
