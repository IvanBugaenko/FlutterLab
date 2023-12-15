import 'package:flutter/material.dart';
import 'package:sber/app/models/enabled_service.dart';
import 'package:sber/app/theme/colors.dart';

class EnabledServiceCardWidget extends StatelessWidget {
  const EnabledServiceCardWidget({super.key, required this.enabledService});

  final EnabledService enabledService;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 236,
        child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: DecoratedBox(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.enableCardShadowLarge,
                      blurRadius: 14,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: AppColors.enableCardShadowSmall,
                      blurRadius: 10,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: ElevatedButton(
                    onPressed: () => {},
                    child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(enabledService.image,
                                    width: 36, height: 36),
                                const SizedBox(width: 13),
                                Text(enabledService.serviceName,
                                    style:
                                        Theme.of(context).textTheme.titleSmall)
                              ],
                            ),
                            const SizedBox(height: 24),
                            Text(enabledService.info.header,
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(enabledService.info.description,
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ))))));
  }
}

class EnabledServicesWidget extends StatelessWidget {
  const EnabledServicesWidget({super.key, required this.enabledServices});

  final List<EnabledService> enabledServices;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 10, right: 10, left: 16),
                itemCount: enabledServices.length,
                itemBuilder: (ctx, index) {
                  return EnabledServiceCardWidget(
                      enabledService: enabledServices[index]);
                })));
  }
}
