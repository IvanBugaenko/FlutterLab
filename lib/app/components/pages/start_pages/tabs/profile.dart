import 'package:flutter/material.dart';
import 'package:sber/app/models/enabled_service.dart';
import 'package:sber/app/models/header_and_description.dart';
import 'package:sber/app/theme/strings.dart';
import 'package:sber/app/widgets/enabled_services.dart';
import 'package:sber/app/widgets/profile_block_widget.dart';

class ProfileTabContentWidget extends StatelessWidget {
  final List<EnabledService> enabledServices;
  final List<String> interestsList;

  final _enabledText = HeaderAndDescription(
      header: Strings.enabledHeader, description: Strings.enabledDescription);

  ProfileTabContentWidget(
    {super.key, required this.enabledServices, required this.interestsList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 30),
      child: ListView(physics: const NeverScrollableScrollPhysics(), children: [
        ProfileBlockWidget(
            headerAndDescription: _enabledText,
            widget: EnabledServicesWidget(enabledServices: enabledServices))
      ]),
    );
  }
}
