import 'package:flutter/material.dart';
import 'package:tatware/shared/styles/colors.dart';
class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cat.length,
        shrinkWrap: true,
        itemBuilder: (_,index)=>Row(
          children: [
            Transform.scale(
              scale: 1.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: CircleAvatar(
                  radius: 10.2,
                  backgroundColor: AppColors.uncheckedColor,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateColor.resolveWith((states) => AppColors.mainColor),
                    value: cat[index]['isChecked'],
                    shape: CircleBorder(),
                    side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 1.0, color: Colors.transparent),
                    ),
                    onChanged: (bool? value) {
                      cat[index]['isChecked'] = value;
                      setState(() {

                      });
                    },
                  ),
                ),
              ),
            ),
            Text(cat[index]['category'])
          ],
        ));
  }
}

 List<Map<String,dynamic>>cat=[
   {
     'category':'Security',
     'isChecked':true,
   } ,
   {
     'category':'Supply Chain',
     'isChecked':false,
   } ,
   {
     'category':'Information Technology',
     'isChecked':false,
   } ,
   {
     'category':'Human Resource',
     'isChecked':false,
   } ,
   {
     'category':'Business Research',
     'isChecked':true,
   } ,
];
