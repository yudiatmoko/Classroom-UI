import 'package:coba2/screen/semester1.dart';
import 'package:flutter/material.dart';
import 'package:coba2/screen/semester2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    _tabController = TabController(length: 8, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          elevation: 10,
          foregroundColor: Theme.of(context).accentColor,
          backgroundColor: Theme.of(context).backgroundColor,
          leading: Builder(
          builder: (BuildContext context) {
           return IconButton(
            icon: const Icon(Icons.menu, size: 28,),
            onPressed: () { Scaffold.of(context).openDrawer(); },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text("Classroom",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 22,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.person_outline,
                size: 28,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                size: 28,
              ),
              onPressed: () {},
            ),
          ],
        ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TabBar(
              controller: _tabController,
              labelColor: Theme.of(context).accentColor,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              labelStyle: TextStyle(
                fontSize: 16,
              ),
              tabs: const <Widget>[
                Text("Semester 1"),
                Text("Semester 2"),
                Text("Semester 3"),
                Text("Semester 4"),
                Text("Semester 5"),
                Text("Semester 6"),
                Text("Semester 7"),
                Text("Semester 8"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Center(
                  child: Semester1()
                ),
                Center(
                  child: Semester2()
                ),
                Center(
                  child: Text(
                    'Tidak ada kelas di sini',
                    style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                  ),
                ),
                Center(
                  child: Text(
                    'Tidak ada kelas di sini',
                    style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                  ),
                ),
                Center(
                  child: Text(
                    'Tidak ada kelas di sini',
                    style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                  ),
                ),
                Center(
                  child: Text(
                    'Tidak ada kelas di sini',
                    style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                  ),
                ),
                Center(
                  child: Text(
                    'Tidak ada kelas di sini',
                    style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                  ),
                ),
                Center(
                  child: Text(
                    'Tidak ada kelas di sini',
                    style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}