import 'package:flutter/material.dart';

class MyNotificationPage extends StatelessWidget {
  const MyNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notifications',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.search,
                size: 35,
              )
            ],
          ),
        ),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          'https://scontent.fjlr2-1.fna.fbcdn.net/v/t39.30808-1/222954038_269375951659493_4528454340313206723_n.jpg?stp=cp0_dst-jpg_p40x40&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=8HbF_ooNODUAb5GYwRQ&_nc_ht=scontent.fjlr2-1.fna&oh=00_AfCX4zPfXhh9Vj1-zFXgTQJuKtjC-6KddCPJRB-QH_bHDA&oe=661DD9FF'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    'Chandni Khan Changed her profile picture',
                                    softWrap: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            '48 minutes age',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}
