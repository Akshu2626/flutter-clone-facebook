import 'package:flutter/material.dart';
import 'package:linkdin/Component/mypost.dart';
import 'package:linkdin/Component/mystory.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                    ),
                    Container(
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Write something here...',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    Icon(
                      Icons.photo_library_outlined,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
              height: 200,
              color: Colors.grey,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return MyStroies();
                },
              )),
          Container(
            height: 560,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MyPost();
              },
            ),
          )
        ],
      ),
    );
  }
}
