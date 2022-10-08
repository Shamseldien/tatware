import 'package:flutter/material.dart';
import 'package:tatware/shared/styles/colors.dart';
import 'package:tatware/shared/styles/fonts.dart';
class ChatFromUser extends StatelessWidget {
     String? mssg;
     Widget? widget;

   ChatFromUser(this.mssg, {this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset('assets/images/robot-chat.png'),
              const SizedBox(width: 20,),
              Expanded(
                child: Container(
                  height: 48,
                  alignment: Alignment.centerLeft,
                  padding:const EdgeInsets.only(left: 15),
                  child: Text('$mssg',
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: AppFonts.poppinsRegular,
                    color: Colors.black

                  ),),
                  decoration: BoxDecoration(
                      color: AppColors.chatColor1.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              )
            ],
          ),
          if(widget!=null)
            widget!
        ],
      ),
    );
  }
}
