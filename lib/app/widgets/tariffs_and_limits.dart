import 'package:flutter/material.dart';
import 'package:sber/app/models/tariffs_and_limits.dart';
import 'package:sber/app/theme/images.dart';

class TariffsAndLimitsCardWidget extends StatelessWidget {
  const TariffsAndLimitsCardWidget({super.key, required this.tariffsAndLimits});

  final TariffsAndLimits tariffsAndLimits;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 16),
          child: Row(children: [
            Image.asset(tariffsAndLimits.image, width: 36, height: 36),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (tariffsAndLimits.description != null) ...[
                  Text(tariffsAndLimits.header,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall),
                  Text(tariffsAndLimits.description!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall)
                ] else ...[
                  Text(tariffsAndLimits.header,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleSmall),
                ]
              ],
            ),
            const Spacer(),
            Image.asset(Images.arrow)
          ]),
        ));
  }
}

class TariffsAndLimitsWidget extends StatelessWidget {
  const TariffsAndLimitsWidget({super.key, required this.tariffsAndLimitsList});

  final List<TariffsAndLimits> tariffsAndLimitsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tariffsAndLimitsList.length,
          itemBuilder: (context, index) {
            return TariffsAndLimitsCardWidget(
                tariffsAndLimits: tariffsAndLimitsList[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(indent: 64, color: Theme.of(context).dividerColor);
          },
        ));
  }
}
