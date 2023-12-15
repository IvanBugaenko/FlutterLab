import 'package:flutter/material.dart';
import 'package:sber/app/models/header_and_description.dart';
import 'package:sber/app/widgets/header_and_desc_widget.dart';

class ProfileBlockWidget extends StatelessWidget {
  final HeaderAndDescription headerAndDescription;
  final Widget widget;

  const ProfileBlockWidget({super.key, required this.headerAndDescription, required this.widget});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderAndDescriptionWidget(headerAndDescription: headerAndDescription),
        widget
      ],
    );
  }
}
