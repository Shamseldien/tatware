import 'package:flutter/material.dart';
import 'package:tatware/shared/styles/fonts.dart';

class GridItemCard extends StatelessWidget {
   String? image;
   String? title;
   String? subTitle;
   String? rate;


   GridItemCard({this.image, this.title, this.subTitle, this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 200,

      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/$image.png'),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10,vertical: 10),
              child: Row(

                children: [
                  Icon(Icons.star,color: Colors.amber,),
                  Text('($rate)',style: TextStyle(color: Colors.grey),),
                  Spacer(),
                  Icon(Icons.favorite,color: Colors.grey),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('$title',style: TextStyle(
                  fontFamily: AppFonts.sFProTextMedium,
                  fontSize: 14
              ),),
            ),Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, ),
              child: Text('$subTitle',style: TextStyle(
                  fontFamily: AppFonts.sFProTextMedium,
                  fontSize: 12,
                  color: Colors.grey
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
