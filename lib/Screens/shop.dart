import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyShopPage extends StatelessWidget {
  const MyShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Marketplace', style: TextStyle(fontSize: 25)),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 13),
                Icon(Icons.search)
              ],
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(onPressed: () {}, child: Text('Sell'))),
            SizedBox(width: 10),
            Expanded(
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Categories')))
          ],
        ),
        Text(
          'Today\'s picks',
          style: TextStyle(fontSize: 18),
        ),
        Expanded(
            child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent.fjlr2-1.fna.fbcdn.net/v/t45.5328-4/422653912_7496580830400957_2550590793590873740_n.jpg?stp=c0.28.261.261a_dst-jpg_p261x260&_nc_cat=1&ccb=1-7&_nc_sid=247b10&_nc_ohc=PhmUomisJGkAb7UlE5C&_nc_ht=scontent.fjlr2-1.fna&oh=00_AfCrTwkqTCNWntswjfTU3uAyXVlscuNbrMecAPdpeYbahw&oe=661DAA52'))),
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Text(
                      '1,20,00$index Urgent Sell',
                      textAlign: TextAlign.center,
                    )),
              ),
            );
          },
        ))
      ],
    );
  }
}
