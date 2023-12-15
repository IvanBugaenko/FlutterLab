import 'package:flutter/material.dart';
import 'package:sber/app/components/pages/start_pages/tabs/profile.dart';
import 'package:sber/app/components/pages/start_pages/tabs/settings.dart';
import 'package:sber/app/theme/strings.dart';
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

  final _tabContent = [
    ProfileTabContentWidget(
        enabledServices: enabledServices, interestsList: interestsList),
    const SettingsTabContentWidget()
  ];

  final _tabList = [Strings.profile, Strings.settings];

  @override
  void initState() {
    _tabController = TabController(length: _tabList.length, vsync: this);
    super.initState();
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
                tabController: _tabController, user: user, tabList: _tabList)
          ];
        },
        body: TabBarView(controller: _tabController, children: _tabContent),
      )),
    );
  }
}
