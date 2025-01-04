import 'package:flutter/material.dart';
import 'package:wietcorb_task/Features/Chart/Presentation/chartview.dart';
import 'package:wietcorb_task/Features/Images/Presentation/ImagesView.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Imagesview(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              height: 0.5,
              color: Colors.blueGrey,
            ),
          ),
          Chartview()
        ],
      ),
    );
  }
}
