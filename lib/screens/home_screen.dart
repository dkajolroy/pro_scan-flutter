import 'package:flutter/material.dart';
import 'package:pro_scan/constant/tools.dart';
import 'package:pro_scan/widgets/global_widgets/recent_tile.dart';
import 'package:pro_scan/widgets/home_widgets/app_bar.dart';
import 'package:pro_scan/widgets/tools/tools_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, childAspectRatio: 0.85),
              itemBuilder: (context, index) {
                Tool item = tools[index];
                return ToolsTile(item: item);
              },
            ),
            const Divider(
              height: 1,
              color: Colors.black12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Files",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward))
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const RecentTile();
              },
            )
          ]),
        ),
      ),
    );
  }
}
