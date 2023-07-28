import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ui/view/home_page.dart';

class UI extends StatefulWidget {
  const UI({super.key});

  @override
  State<UI> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UI> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder(builder: ((context, state) => Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 76, 99, 76),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Material(
                  color: const Color.fromARGB(255, 76, 99, 76),
                  child: TabBar(
                    labelColor: Colors.white,
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: "Home".toString(),
                      ),
                      Tab(
                        text: "Apartament".toString(),
                      ),
                      Tab(
                        text: "Cabins".toString(),
                      ),
                      Tab(
                        text: "Beachfront".toString(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  width: double.infinity,
                  child: TabBarView(controller: tabController, children: [
                    // Body_home(
                    //   Text_titile: "Long Beach Ixtapa",
                    //   Text_titile1: "Sun Valley",
                    // ),
                    // Body_home(
                    //   Text_titile: "A family resort",
                    //   Text_titile1: "A family resort",
                    // ),
                    Tab(
                      text: "Cabins".toString(),
                    ),
                    Tab(
                      text: "Beachfront".toString(),
                    ),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: const Color.fromARGB(255, 66, 173, 66),
            unselectedItemColor: const Color.fromARGB(255, 255, 252, 252),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: "News",
                backgroundColor: Color.fromARGB(255, 67, 98, 67),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                label: "Calendar",
                backgroundColor: Color.fromARGB(255, 55, 66, 55),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined),
                label: "Bookmark",
                backgroundColor: Color.fromARGB(255, 55, 66, 55),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Person",
                backgroundColor: Color.fromARGB(255, 46, 239, 46),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
