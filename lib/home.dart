import 'package:flutter/material.dart';

import 'detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> names = [
  'salma',
  'nada',
  'merna',
  'aya',
  'salma',
  'nada',
  'merna',
  'aya',
  'salma',
  'nada',
  'merna',
  'aya',
];
List<IconData> icons = [
  Icons.add,
  Icons.account_balance_sharp,
  Icons.account_box,
  Icons.add_alert_sharp,
  Icons.dangerous,
  Icons.safety_check,
  Icons.h_mobiledata,
  Icons.e_mobiledata,
  Icons.nat,
  Icons.margin,
  Icons.u_turn_left,
  Icons.qr_code,
];
class _HomeScreenState extends State<HomeScreen> {
  Widget MySuperCell(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              Detail(index: index, heroIcon: icons[index]),
          transitionDuration: const Duration(milliseconds: 7000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SizeTransition(
              sizeFactor: animation,
              child: child,
            );
          },
        );
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //             Detail(index: index, heroIcon: icons[index])));
      },
      child: Hero(
        tag: icons[index],
        child: Material(
          child: Container(
            // padding: const EdgeInsets.all(16),
            height: 100,
            width: 50,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.blueGrey[100], boxShadow: [
              BoxShadow(color: Colors.grey.shade100, offset: Offset(0, 5))
            ]),
            child: Row(
              children: [
                // Hero(
                //   tag: icons[index],
                //   child:
                Flexible(
                    child: SizedBox(
                        height: 50, width: 50, child: Icon(icons[index]))),
                // ),
                Expanded(
                  child: Text(
                    names[index],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title: const Text("Hero"),
              centerTitle: true,
            ),
            // drawer: ListView.builder(
            //     itemCount: names.length,
            //     // scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) => MySuperCell(context, index)),
            body: Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListWheelScrollView(
                      physics: const FixedExtentScrollPhysics(),
                      perspective: 0.004,
                      // scrollDirection: Axis.horizontal,
                      itemExtent: 250,
                      children: List.generate(12, (index) => Builder(
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context, PageRouteBuilder(
                                //   pageBuilder: (context, animation, secondaryAnimation) =>
                                //       Detail(index: index, heroIcon: icons[index]),
                                //   transitionDuration: const Duration(milliseconds: 700),
                                //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                //     return ScaleTransition(
                                //       scale: animation,
                                //       child: child,
                                //     );
                                //   },
                                // ));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Detail(index: index, heroIcon: icons[index])));
                              },
                              child: Hero(
                                tag: icons[index],
                                child: Material(
                                  child: Container(
                                    // padding: const EdgeInsets.all(16),
                                    height: 150,
                                    width: 300,
                                    margin: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(color: Colors.blueGrey[100], boxShadow: [
                                      BoxShadow(color: Colors.grey.shade100, offset: Offset(0, 5))
                                    ]),
                                    child: Row(
                                      children: [
                                        // Hero(
                                        //   tag: icons[index],
                                        //   child:
                                        Flexible(
                                            child: SizedBox(
                                                height: 50, width: 50, child: Icon(icons[index]))),
                                        // ),
                                        Expanded(
                                          child: Text(
                                            names[index],
                                            style: const TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      )))
              ),
            ),
          );

  }
}