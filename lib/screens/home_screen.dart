import 'package:flutter/material.dart';

import '../widgets/sidebar_widget.dart';
import '../widgets/text_widget.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final featurelist = <String>[
    "assets/wheel.png",
    "assets/car-engine.png",
    "assets/steering-wheel.png",
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.apps,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Stack(
          children: [
            Row(
              children: [
                SideBarWidget(),
                Expanded(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  padding: const EdgeInsets.all(15),
                                  height: 320,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color(0xff4f6361),
                                            offset: Offset(0, 10),
                                            blurRadius: 10)
                                      ],
                                      color: Theme.of(context).primaryColor),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xfffcbe02),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          TextWidget(
                                            text: "4.5",
                                            weight: true,
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const TextWidget(
                                            text: "ART BIKE\n\$5,560",
                                            weight: true,
                                            size: 16,
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                    color: Colors.white),
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            child: const Icon(
                                                Icons.lock_outline,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Hero(
                                    tag: "0",
                                    child: Image.asset(
                                      "assets/bike.png",
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < featurelist.length; i++) ...[
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  padding: const EdgeInsets.all(15),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color(0xff4f6361),
                                            offset: Offset(0, 10),
                                            blurRadius: 10)
                                      ],
                                      color: Theme.of(context).primaryColor),
                                  child: Image.asset(
                                    featurelist[i],
                                    color: const Color(0xffc0c9c9),
                                  ),
                                )
                              ]
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: SafeArea(
                  child: TextWidget(
                text: "BIKES\nCOLLECTIONS",
                weight: true,
                size: 30,
              )),
            )
          ],
        ),
      );
}
