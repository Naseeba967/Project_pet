import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<IconData> navigationIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.info,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.solidUser
  ];
  List<String> iconName = ["home", " Information", " Favourite", "setting"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        // children: const [home(), Information(), Favourite(), SettingScreen()],
      ),
      bottomNavigationBar: Container(
        height: 82,
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int i = 0; i < navigationIcons.length; i++) ...{
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = i;
                          });
                        },
                        child: Center(
                          child: FaIcon(
                            navigationIcons[i],
                            color: i == currentIndex
                                ? Colors.blueAccent
                                : Colors.black54,
                            size: i == currentIndex ? 20 : 15,
                          ),
                        )),
                  )
                }
              ],
            )
          ],
        ),
      ),
    );
  }
}
