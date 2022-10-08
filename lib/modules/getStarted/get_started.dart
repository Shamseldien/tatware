import 'package:flutter/material.dart';
import 'package:tatware/shared/styles/fonts.dart';

import '../../shared/styles/colors.dart';
import '../getStarted-2/getStarted_2.dart';
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Positioned(
                  right: 50,
                  top: 100,
                  child: Image.asset('assets/images/line.png', )),
              Positioned(
                   bottom: MediaQuery.of(context).size.height*0.05,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/robot-image.png', )),
              Positioned(
                   top: MediaQuery.of(context).size.height*0.13,
                  right: MediaQuery.of(context).size.width*0.18,

                  child: SizedBox(
                    width: 247,
                    child:  RichText(
                      text:  const TextSpan(
                        text: 'Hi, My name is ',
                        style:   TextStyle(fontSize: 19,color: Colors.black,
                            height: 1.3,
                            fontFamily: AppFonts.poppinsRegular) ,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Oranobot',
                              style:   TextStyle(color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppFonts.poppinsRegular)),
                          TextSpan(
                              text: 'I will always be there to help and assist you. \n\n',
                              style:   TextStyle(
                                  fontSize: 19,
                                  fontFamily:AppFonts.poppinsRegular)),
                          TextSpan(
                              text: 'Say Start To go to Next.',
                              style:   TextStyle(
                                  fontSize: 19,
                                  fontFamily:AppFonts.poppinsRegular)),

                        ],
                      ),
                    ),
                  ),),
              Align(
               alignment: Alignment.bottomCenter,
                child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 54,
                      width: 147,
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_)=> const GetStarted2()));
                          },
                          child:const Text('Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: AppFonts.poppinsMedium
                            ),)),
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
        ),
      ),
    );
  }
}
