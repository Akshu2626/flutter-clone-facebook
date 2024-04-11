import 'package:flutter/cupertino.dart';
import 'package:linkdin/Component/mypost.dart';

class MyTelevision extends StatelessWidget {
  const MyTelevision({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return MyPost();
        },
      ),
    );
  }
}
