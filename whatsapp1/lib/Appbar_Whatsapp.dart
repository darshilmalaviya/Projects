import 'package:flutter/material.dart';

import 'Call_Whatsapp.dart';
import 'Chatwhatsapp.dart';
import 'Status_Whatsapp.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        // leading: Icon(Icons.menu),
        // leadingWidth: 0,
        // titleSpacing: 0,
        // centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
            labelPadding: const EdgeInsets.symmetric(vertical: 5),
            controller: tabController,
            tabs: const [
              Text("Chat"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
        title: const Text("WhatsApp", style: TextStyle(fontSize: 22)),
        actions: [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(width: 20),
          const Icon(Icons.search),
          const SizedBox(width: 10),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            constraints: const BoxConstraints.expand(
              width: 200,
              height: 250,
            ),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text("New Group"),
                ),
                const PopupMenuItem(
                  child: Text("New Broadcast"),
                ),
                const PopupMenuItem(
                  child: Text("Linked Device"),
                ),
                const PopupMenuItem(
                  child: Text("Starred Messages"),
                ),
                const PopupMenuItem(
                  child: Text("Settings"),
                ),
              ];
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Chat(
            data: initState,
          ),
          Status(),
          Call(),
        ],
      ),
    );
  }
}
