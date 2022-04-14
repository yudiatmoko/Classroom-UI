import 'package:coba2/data/people.dart';
import 'package:flutter/material.dart';
import 'package:coba2/data/classworks.dart';

class PeopleTab extends StatefulWidget {
  String className;
  String creator;
  PeopleTab({required this.className,required this.creator});
  @override
  State<PeopleTab> createState() => _PeopleTabState();
}

class _PeopleTabState extends State<PeopleTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        foregroundColor: Theme.of(context).accentColor,
        elevation: 10,
        leading: Builder(
          builder: (BuildContext context) {
           return IconButton(
            icon: const Icon(Icons.menu, size: 28,),
            onPressed: () {},
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert, 
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
        title: Text(widget.className, style: TextStyle(fontSize: 20),),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 75,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('Teachers',
                        style: TextStyle(fontSize: 36, color: Theme.of(context).accentColor, fontWeight: FontWeight.w400),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10,top: 65),
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 2, color:Theme.of(context).accentColor)
                        )
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Padding(
                      padding: const EdgeInsets.only(top: 7.5, left: 15, right: 15, bottom: 7.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Theme.of(context).accentColor,
                            child: Icon(
                              Icons.person_outline,
                              color: Theme.of(context).backgroundColor,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.creator,
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
              Container(
                height: 75,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('Classmates',
                        style: TextStyle(fontSize: 36, color: Theme.of(context).accentColor, fontWeight: FontWeight.w400),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10,top: 65),
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 2, color:Theme.of(context).accentColor)
                        )
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: classmatesList.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 7.5, left: 15, right: 15, bottom: 7.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Theme.of(context).accentColor,
                            child: Icon(
                              classmatesList[index].icon,
                              color: Theme.of(context).backgroundColor,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classmatesList[index].name,
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                ) 
              ),
            ],
          )
        ],
      )
    );
  }
}