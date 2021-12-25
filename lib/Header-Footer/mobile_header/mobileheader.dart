import 'package:elektronik_gaming/mainscreen.dart';
import 'package:flutter/material.dart';

class MobileHeader extends StatefulWidget {
  const MobileHeader({Key? key}) : super(key: key);
  @override
  _MobileHeaderState createState() => _MobileHeaderState();
}

class _MobileHeaderState extends State<MobileHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Container(
            width: double.infinity,
            height: 75,
            color: Colors.orange.shade700,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    MainScreen.globalKey.currentState!.setState(() {
                      MainScreen.scaffoldKey.currentState!.openDrawer();
                    });
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Elektronik',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: const [
                            Expanded(child: SizedBox()),
                            Text(
                              'Gaming',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
