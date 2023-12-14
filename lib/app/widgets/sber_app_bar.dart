import 'package:flutter/material.dart';
import 'package:sber/app/models/user.dart';
import 'package:sber/app/theme/colors.dart';

class SberAppBar extends StatelessWidget {
  final TabController tabController;
  final User user;
  final List<String> tabList;

  const SberAppBar(
      {super.key,
      required this.tabController,
      required this.user,
      required this.tabList});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      pinned: true,
      snap: true,
      shadowColor: AppColors.onSurfaceShadow,
      floating: true,
      expandedHeight: 270,
      actions: [
        IconButton(
            icon: const Icon(Icons.logout),
            color: AppColors.tertiary,
            onPressed: () => {})
      ],
      leading: IconButton(
          icon: const Icon(Icons.close),
          color: AppColors.tertiary,
          onPressed: () => {}),
      bottom: TabBar(
        tabs: [for (var name in tabList) Tab(child: Text(name))],
        controller: tabController,
      ),
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 36, top: 30),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: AppColors.onSurfaceShadow,
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                  child: Image.asset(
                    user.imagePath,
                  ),
                ),
              ),
              Text(
                user.name,
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          )),
    );
  }
}
