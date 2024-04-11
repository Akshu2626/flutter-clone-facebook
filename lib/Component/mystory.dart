import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStroies extends StatelessWidget {
  const MyStroies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 95,
        height: 140,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://scontent.fjlr2-1.fna.fbcdn.net/v/t39.30808-6/435335488_398307949732003_6206595394891412659_n.jpg?stp=dst-jpg_p526x296&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=cR2cHoqGKcwAb40bBZb&_nc_ht=scontent.fjlr2-1.fna&oh=00_AfAaAJ_175yUmoc34u84vGCehZ72JbM_eoWwio6_JDfNNw&oe=661D8FB7',
                ),
                fit: BoxFit.cover),
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fjlr2-1.fna.fbcdn.net/v/t39.30808-1/365642621_1364610814097275_1599072964389574444_n.jpg?stp=dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=ZDMsrhX_Sx4Ab7F6tQA&_nc_ht=scontent.fjlr2-1.fna&oh=00_AfASd6yvKzpgOqprzGNHvuJfrVviIzs2Pl2CoUN3juDrmA&oe=661D6FED'),
                  radius: 20,
                ),
              ),
              Text(
                'Akshu Gajbhiye',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
