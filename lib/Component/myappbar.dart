import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeVMgr_g0hYAYqcs49_3Z5T0eXh52rfUZzbw&s'),
          ),
          Row(
            children: [
              Icon(Icons.add_circle),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Icon(Icons.search),
              ),
              Icon(Icons.message)
            ],
          )
        ],
      ),
    );
  }
}
