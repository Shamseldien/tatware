import 'package:flutter/material.dart';
import 'package:tatware/shared/styles/colors.dart';
import 'package:tatware/shared/styles/fonts.dart';
class ChatToUser extends StatelessWidget {
  String? mssg;

  ChatToUser(this.mssg)  ;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
      child: Row(
        children: [

          Expanded(
            child: Container(
              height: 48,
              alignment: Alignment.centerLeft,
              padding:const EdgeInsets.only(left: 15),
              child: Text('$mssg',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: AppFonts.poppinsRegular,
                    color: Colors.white

                ),),
              decoration: BoxDecoration(
                  color: AppColors.chatColor2,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Image.asset('assets/images/read.png',width: 20,),

        ],
      ),
    );
  }
}
