import 'package:flutter/material.dart';

import '../widgets/MusicList.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  ScrollController scrollController=ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 58, 4, 151), Colors.black],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 61, 7, 153),
              unselectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.people_outline),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.backspace_outlined),
                  label: 'Back',
                ),
              ]),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppbarUi(),
                   
                    SizedBox(
                      height: 30,
                    ),
                    Center(child: Image.asset("assets/BGimg.jpg")),
                    SearchUI(),
                    TabBarUI(),
                  MusicList(scrollController: scrollController),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TabBarUI extends StatelessWidget {
  const TabBarUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    TabBar(
      isScrollable: true,
      labelStyle: TextStyle(fontSize: 18),
      indicator: BoxDecoration(
        border: Border(
            bottom: BorderSide(width: 3, color: Colors.blueGrey)),
      ),
      tabs: [
        Tab(text: "Recently played"),
        Tab(
          text: "Trending",
        ),
        Tab(text: "New Releases"),
        Tab(
          text: "Downloads",
        ),
      ],
    );
  }
}

class SearchUI extends StatelessWidget {
  const SearchUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 61, 22, 145),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 100,
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Search the music",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.search_rounded,
              color: const Color.fromARGB(255, 255, 255, 255),
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class AppbarUi extends StatelessWidget {
  const AppbarUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.sort_rounded,
                color: Color.fromARGB(
                  255,
                  224,
                  217,
                  244,
                ),
                size: 34,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.more_vert_rounded,
                color: Color.fromARGB(255, 224, 217, 244),
                size: 34,
              ),
            ),
          ],
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Hello Rhea,",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Welcome back!!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 187, 182, 182)
                              .withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1),
                    ),
                  ),
          ],
         )
      ],
    );
  }
}
