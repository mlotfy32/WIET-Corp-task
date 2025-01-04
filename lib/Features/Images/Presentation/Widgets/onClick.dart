import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:wietcorb_task/Core/Utiles/Styles.dart';

class Onclick extends StatelessWidget {
  Onclick({super.key, required this.id, required this.widget});
  final String id;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.info,
        body: Center(
          child: Text(
            'If the body is specified, then title and description will be ignored, this allows to 											further customize the dialogue.',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        title: 'This is Ignored',
        desc: 'This is also Ignored',
        btnOkOnPress: () {},
      )..show(),
      child: SizedBox(height: 100, child: widget),
    );
  }
}
