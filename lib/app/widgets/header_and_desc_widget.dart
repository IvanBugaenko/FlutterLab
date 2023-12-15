import 'package:flutter/material.dart';
import 'package:sber/app/models/header_and_description.dart';

class HeaderAndDescriptionWidget extends StatelessWidget {
  final HeaderAndDescription headerAndDescription;

  const HeaderAndDescriptionWidget(
      {super.key, required this.headerAndDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerAndDescription.header,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(headerAndDescription.description,
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ));
  }
}
