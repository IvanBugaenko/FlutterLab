import 'package:flutter/material.dart';
import 'package:sber/app/models/header_and_description.dart';
import 'package:sber/app/models/tariffs_and_limits.dart';
import 'package:sber/app/theme/images.dart';
import 'package:sber/app/theme/strings.dart';

final enabledText = HeaderAndDescription(
    header: Strings.enabledHeader, description: Strings.enabledDescription);

final tariffsAndLimitsText = HeaderAndDescription(
    header: Strings.tariffsAndLimitsHeader,
    description: Strings.tariffsAndLimitsDescription);

final interestsText = HeaderAndDescription(
    header: Strings.interestsHeader, description: Strings.interestsDescription);

final tariffsAndLimitsInfo = [
  TariffsAndLimits(
      image: Images.limitIcon,
      info: HeaderAndDescription(
          header: Strings.limitHeader, description: Strings.limitDescription)),
  TariffsAndLimits(
      image: Images.transfersWithoutIcon,
      info: HeaderAndDescription(
          header: Strings.transfersWithoutHeader,
          description: Strings.transfersWithoutDescription)),
  TariffsAndLimits(
      image: Images.infoIcon,
      info: HeaderAndDescription(header: Strings.infoHeader)),
];

final tabList = [
  Strings.profile, Strings.settings
];

final List<Widget> tabContent = [

];
