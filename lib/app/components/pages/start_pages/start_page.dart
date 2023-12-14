import 'package:flutter/material.dart';
import 'package:sber/app/components/components.dart';
import 'package:sber/app/theme/colors.dart';
import 'package:sber/app/widgets/sber_app_bar.dart';
import 'package:sber/mock/mock_data.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
          child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SberAppBar(
                tabController: _tabController, user: user, tabList: tabList)
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: tabContent,
        ),
      )),
    );
  }
}
