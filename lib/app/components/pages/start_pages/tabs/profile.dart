import 'package:flutter/material.dart';
import 'package:sber/app/models/enabled_service.dart';
import 'package:sber/app/models/header_and_description.dart';
import 'package:sber/app/models/tariffs_and_limits.dart';
import 'package:sber/app/theme/images.dart';
import 'package:sber/app/theme/strings.dart';
import 'package:sber/app/widgets/enabled_services.dart';
import 'package:sber/app/widgets/interests.dart';
import 'package:sber/app/widgets/profile_block_widget.dart';
import 'package:sber/app/widgets/tariffs_and_limits.dart';

class ProfileTabContentWidget extends StatelessWidget {
  final List<EnabledService> enabledServices;
  final List<String> interestsList;

  final _enabledText = HeaderAndDescription(
      header: Strings.enabledHeader, description: Strings.enabledDescription);

  final _tariffsAndLimitsText = HeaderAndDescription(
      header: Strings.tariffsAndLimitsHeader,
      description: Strings.tariffsAndLimitsDescription);

  final _interestsText = HeaderAndDescription(
      header: Strings.interestsHeader,
      description: Strings.interestsDescription);

  final _tariffsAndLimitsList = [
    TariffsAndLimits(
        image: Images.limitIcon,
        header: Strings.limitHeader,
        description: Strings.limitDescription),
    TariffsAndLimits(
        image: Images.transfersWithoutIcon,
        header: Strings.transfersWithoutHeader,
        description: Strings.transfersWithoutDescription),
    TariffsAndLimits(image: Images.infoIcon, header: Strings.infoHeader),
  ];

  ProfileTabContentWidget(
      {super.key, required this.enabledServices, required this.interestsList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView(physics: const NeverScrollableScrollPhysics(), children: [
        ProfileBlockWidget(
            headerAndDescription: _enabledText,
            widget: EnabledServicesWidget(enabledServices: enabledServices)),

        const SizedBox(height: 46),

        ProfileBlockWidget(
            headerAndDescription: _tariffsAndLimitsText,
            widget: TariffsAndLimitsWidget(tariffsAndLimitsList: _tariffsAndLimitsList)),

        const SizedBox(height: 46),

        ProfileBlockWidget(
            headerAndDescription: _interestsText,
            widget: InterestsWidget(interestsList: interestsList)),
      ]),
    );
  }
}
