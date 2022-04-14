import 'package:flutter/material.dart';
import 'package:coba2/data/classworks.dart';

class ClassworkTab extends StatefulWidget {
  String className;
  ClassworkTab({required this.className});
  @override
  _ClassworkTabState createState() => _ClassworkTabState();
}

class _ClassworkTabState extends State<ClassworkTab> {
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
              Icons.assignment_ind_outlined,
              size: 28,
            ),
            onPressed: () {},
          ),
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
                      child: Text('Pertemuan 4',
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
                  itemCount: classWorkList2.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 7.5, left: 15, right: 15, bottom: 7.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Theme.of(context).accentColor,
                            child: Icon(
                              classWorkList4[index].icon,
                              color: Theme.of(context).backgroundColor,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classWorkList4[index].topic,
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                classWorkList4[index].dateTime,
                                style: TextStyle(color: Theme.of(context).accentColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                ) 
              ),
              Container(
                height: 75,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('Pertemuan 3',
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
                  itemCount: classWorkList3.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 7.5, left: 15, right: 15, bottom: 7.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Theme.of(context).accentColor,
                            child: Icon(
                              classWorkList3[index].icon,
                              color: Theme.of(context).backgroundColor,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classWorkList3[index].topic,
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                classWorkList3[index].dateTime,
                                style: TextStyle(color: Theme.of(context).accentColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                ) 
              ),
              Container(
                height: 75,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('Pertemuan 2',
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
                  itemCount: classWorkList2.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 7.5, left: 15, right: 15, bottom: 7.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Theme.of(context).accentColor,
                            child: Icon(
                              classWorkList2[index].icon,
                              color: Theme.of(context).backgroundColor,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classWorkList2[index].topic,
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                classWorkList2[index].dateTime,
                                style: TextStyle(color: Theme.of(context).accentColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                ) 
              ),
              Container(
                height: 75,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('Pertemuan 1',
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
                  itemCount: classWorkList1.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 7.5, left: 15, right: 15, bottom: 7.5),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Theme.of(context).accentColor,
                            child: Icon(
                              classWorkList2[index].icon,
                              color: Theme.of(context).backgroundColor,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classWorkList1[index].topic,
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                classWorkList1[index].dateTime,
                                style: TextStyle(color: Theme.of(context).accentColor),
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
