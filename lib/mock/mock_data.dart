import 'package:sber/app/models/enabled_services.dart';
import 'package:sber/app/models/header_and_description.dart';
import 'package:sber/app/theme/images.dart';
import 'package:sber/app/theme/strings.dart';
import 'package:sber/app/models/user.dart';

final user = User(name: Strings.userName, imagePath: Images.userPhotoImage);

final enabledServices = [
  EnabledServices(
      image: Images.sberPrimeIcon,
      serviceName: Strings.sberPrimeHeader,
      info: HeaderAndDescription(
          header: Strings.sberPrimePaymentDateInfo, description: Strings.cost)),
  EnabledServices(
      image: Images.transfersIcon,
      serviceName: Strings.transfersHeader,
      info: HeaderAndDescription(
          header: Strings.transfersPaymentDateInfo, description: Strings.cost)),
];

final interestsList = [
  Strings.foodChip,
  Strings.selfDevelopmentChip,
  Strings.technologiesChip,
  Strings.homeChip,
  Strings.leisureChip,
  Strings.selfCareChip,
  Strings.scienceChip,
];
