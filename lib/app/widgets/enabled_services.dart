import 'package:flutter/material.dart';
import 'package:sber/app/models/enabled_service.dart';

class EnabledServiceCardWidget extends StatelessWidget {
  final EnabledService enabledService;

  const EnabledServiceCardWidget({super.key, required this.enabledService});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ElevatedButton(
            onPressed: () => {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset(enabledService.image, width: 36, height: 36),
                    const SizedBox(width: 13),
                    Text(enabledService.serviceName,
                        style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                const SizedBox(height: 24, width: 180),
                // Expanded(child: Container()),
                Text(enabledService.info.header,
                    style: Theme.of(context).textTheme.bodyMedium),
                Text(enabledService.info.description,
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 16),
              ],
            )));
  }
}

class EnabledServicesWidget extends StatelessWidget {
  final List<EnabledService> enabledServices;

  const EnabledServicesWidget({super.key, required this.enabledServices});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
            width: double.infinity,
            height: 151,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                itemCount: enabledServices.length,
                itemBuilder: (ctx, index) {
                  return EnabledServiceCardWidget(
                      enabledService: enabledServices[index]);
                })));
  }
}
