import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tatware/modules/homeScreen/gridItemCard.dart';
import 'package:tatware/shared/styles/colors.dart';
import 'package:tatware/shared/styles/fonts.dart';

import 'itemBuilder.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SlidingUpPanel(
      borderRadius: BorderRadius.circular(20),
      panel: Column(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Container(
                height: 5,
                width: 36,
                color:AppColors.sliderColor,
              ),
            ),
          ListView.builder(
            itemCount: titles.length,
              shrinkWrap: true,
              itemBuilder:(_,index)=>Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Container(
                  height: 68,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: AppColors.uncheckedColor
                      )
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/images/${titles[index]['icon']}',height: 40,),
                    title: Text('${titles[index]['title']}'),
                    subtitle: Text('${titles[index]['subTitle']}'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              )
          )
        ],
      ),
      maxHeight: MediaQuery.of(context).size.height*0.7,
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recommended Experts',style: TextStyle(
                    fontFamily: AppFonts.sFProTextMedium,
                    fontSize: 16
                ),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_outlined,color: Colors.grey,))
              ],
            ),
            Container(
              height: 245,
              alignment: Alignment.center,
              child: ListView.builder(
                itemCount: _list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>GridItemCard(
                  image: _list[index]['image'],
                  title:_list[index]['title'],
                  subTitle: _list[index]['subTitle'],
                  rate: _list[index]['rate'],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Online Experts',style: TextStyle(
                    fontFamily: AppFonts.sFProTextMedium,
                    fontSize: 16
                ),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_outlined,color: Colors.grey,))
              ],
            ),
            Container(
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: name.length,
                itemBuilder: (_,index)=>ItemBuilder(name[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String,dynamic>>titles=[
  {
    'title':'Information Technology',
    'subTitle':'23 Experts',
    'icon':'information.png'
  },
  {
    'title':'Supply Chain',
    'subTitle':'21 Experts',
    'icon':'supply.png'
  },
  {
    'title':'Security',
    'subTitle':'19 Experts',
    'icon':'security.png'
  },
  {
    'title':'Human Resource',
    'subTitle':'4 Experts',
    'icon':'hr.png'
  },
  {
    'title':'Immigration',
    'subTitle':'15 Experts',
    'icon':'imagration.png'
  },
  {
    'title':'Translation',
    'subTitle':'3 Experts',
    'icon':'translation.png'
  },
];
List<String>name=[
  'Lance',
  'Niles',
  'Samuel',
  'Hilary',
  'Hanson',

];
List<Map<String,dynamic>>_list=[
  {
  'image':'man',
 'title':'Kareem Adel',
  'subTitle':'Supply Chain',
  'rate':'5.0',
  },
  {
  'image':'women',
 'title':'Merna Adel',
  'subTitle':'Supply Chain',
  'rate':'4.9',
  },
];