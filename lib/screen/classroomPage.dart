import 'package:coba2/screen/peopleTab.dart';
import 'package:coba2/screen/streamTab.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'classworkTab.dart';

class NavBar extends StatefulWidget {
  AssetImage bannerImg;
  String className;
  String description;
  String creator;
  NavBar({required this.bannerImg, required this.className, required this.description, required this.creator});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    String className = widget.className;
    String description = widget.description;
    String creator = widget.creator;
    AssetImage bannerImg = widget.bannerImg;
  final List<Widget> _widgetOptions = <Widget>[
    StreamTab(
        bannerImg: bannerImg,
        className: className,
        description: description,
    ),
    ClassworkTab(className: className,),
    PeopleTab(className: className, creator: creator,)
  ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)
          ),
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            child: GNav(
              rippleColor: Theme.of(context).accentColor,
              hoverColor: Theme.of(context).accentColor,
              gap: 8,
              activeColor: Theme.of(context).backgroundColor,
              iconSize: 28,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Theme.of(context).accentColor,
              color: Colors.black,
              tabs: [
                GButton(
                  iconColor: Theme.of(context).accentColor,
                  icon: Icons.chat_outlined,
                  text: 'Stream',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).backgroundColor
                  ),
                ),
                GButton(
                  iconColor: Theme.of(context).accentColor,
                  icon: Icons.assignment_outlined,
                  text: 'Classwork',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).backgroundColor
                  ),
                ),
                GButton(
                  iconColor: Theme.of(context).accentColor,
                  icon: Icons.people_alt_outlined,
                  text: 'People',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).backgroundColor
                  ),
                ),
                // GButton(
                //   icon: LineIcons.user,
                //   text: 'Profile',
                // ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}