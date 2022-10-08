import 'package:flutter/material.dart';
import 'package:tatware/layout/home_layout.dart';
import 'package:tatware/modules/getStarted-2/categories-widget.dart';
import 'package:tatware/shared/components/chatFromUser.dart';
import 'package:tatware/shared/components/chatToUser.dart';
import 'package:tatware/shared/styles/colors.dart';
import 'package:tatware/shared/styles/fonts.dart';
class GetStarted2 extends StatelessWidget {
  const GetStarted2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:   [
            Expanded(
              child: ListView.builder(
                itemCount:chatList.length,
                  itemBuilder: (context, index) {
                    return index.isEven
                      ? ChatFromUser( chatList[index],
                    widget:chatList.length != index+1
                        ? null
                        : Padding(
                          padding: const EdgeInsets.only(top: 10,left: 45),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CategoriesList(),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('Say Done, Or Press Send to Apply',
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 14,
                                  fontFamily: AppFonts.poppinsRegular
                                ),),
                              )
                            ],
                          ),
                        ),)
                      : ChatToUser(chatList[index]);
                  } ),
            ),
            Divider(
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColors.typingColor,
                          hintText: 'Type something…',
                          hintStyle: TextStyle(
                            color: AppColors.chatColor1,
                          ),
                          
                          prefixIcon: Icon(Icons.language_outlined,color:AppColors.chatColor1 ,),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.transparent
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.transparent
                              )
                          ),
                          suffixIcon: Image.asset('assets/images/Voice.png'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        filled: true
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeLayout()));
                  }, icon: Image.asset('assets/images/Send.png'))
                ],
              ),
            )
          ]
            )



      ),
    );
  }
}

List<String> chatList=[
  'Hi, Whats You Name Firstname?',
  'Abdalla',
  'Ok, Abdalla Whats Your Lastname?',
  'Salah',
  'Mr Abdalla Salah, What\'s your Title? ',
  'Front-end Developer',
  'What Categories you will need expert In?',
];
