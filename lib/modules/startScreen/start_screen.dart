import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tatware/modules/getStarted/get_started.dart';
import 'package:tatware/shared/styles/colors.dart';
import 'package:tatware/shared/styles/fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Image.png',
            width: double.infinity,
         ),
          Align(
            alignment: Alignment.center,
            child: Column(
               mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/logo.png',height: 41,),
                const SizedBox(height: 30,),
                Text('Expert From Every Planet',
                  style: TextStyle(
                      fontFamily: AppFonts.poppinsSemiBold,
                      color: AppColors.textColor,
                      fontSize: 19),),
              ],
            ),
          ),

          Positioned(
          bottom: MediaQuery.of(context).size.height*0.03,
            right:MediaQuery.of(context).size.width*0.1,
            left: MediaQuery.of(context).size.width*0.1,
            child: Column(
              children: [
                Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context,
                              MaterialPageRoute(builder: (_)=> const GetStartedScreen()));
                      },
                      child:const Text('Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: AppFonts.poppinsMedium
                      ),)),
                ),
                const SizedBox(height: 30,),
                RichText(
                  text:   TextSpan(
                    text: 'Don’t have an account? ',
                    style:const  TextStyle(fontSize: 12,color: Colors.black,
                        fontFamily: AppFonts.poppinsRegular) ,
                    children: <TextSpan>[
                        TextSpan(
                          text: 'SignUp',
                          style:   TextStyle(color: AppColors.mainColor,
                              fontSize: 12,
                              fontFamily: AppFonts.poppinsMedium)),

                    ],
                  ),
                ),
         const  SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.language_outlined),
                       SizedBox(width: 10,),
                      Text('English',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: AppFonts.facebookSansRegular)),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
