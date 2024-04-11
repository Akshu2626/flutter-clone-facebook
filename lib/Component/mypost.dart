import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkdin/Component/like.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: CircleAvatar(),
                        ),
                        Text(
                          'The Cricket Lounge',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.more_horiz_rounded),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.close_outlined),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                  child: Text(
                    'He gave an epic replay 🔥',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Image.network(
                      'https://scontent.fjlr2-1.fna.fbcdn.net/v/t45.1600-4/430882194_120207142926160347_4972260074888918654_n.jpg?stp=cp0_dst-jpg_p526x296_q75_spS444&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=69cIts2bbZEAb64TmBw&_nc_ht=scontent.fjlr2-1.fna&oh=00_AfDPtcPD3ZaIzRnVtBTzNVroUIPXMtp96WnEGbf5COp4lw&oe=661D95AC',
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('🤣 Souurabh Dass and 9.5 others 395 comments'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyLike(texxt: 'Like', iconss: Icons.thumb_up_alt_outlined),
                    MyLike(texxt: 'Comment', iconss: Icons.message),
                    MyLike(texxt: 'Send', iconss: Icons.share),
                    MyLike(texxt: 'Share', iconss: Icons.reply),
                  ],
                )
              ],
            ),
          );
  }
}