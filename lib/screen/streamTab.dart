import 'package:flutter/material.dart';
import 'package:coba2/data/comments.dart';

class StreamTab extends StatefulWidget {
  AssetImage bannerImg;
  String className;
  String description;
  StreamTab({required this.bannerImg, required this.className, required this.description});

  @override
  _StreamTabState createState() => _StreamTabState();
}

class _StreamTabState extends State<StreamTab> {
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
            onPressed: () { Scaffold.of(context).openDrawer(); },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
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
      body: Column(
      children: [
        Container(
          height: 120,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.bannerImg,
                    fit: BoxFit.cover
                  ),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)],
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 400,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 34, left: 16),
                child: Text(widget.className,
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                width: 400,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 16, left: 16),
                child: Text(widget.description,
                  style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)]),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(
                    Icons.person_outline,
                    color:Theme.of(context).backgroundColor,
                    size: 30,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Share with your class...",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )),
        Expanded(
        child: ListView.builder(
            itemCount: basdat.length,
            itemBuilder: (context, int index) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 0)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Theme.of(context).accentColor,
                                child: Icon(
                                  basdat[index].userDp,
                                  color:Theme.of(context).backgroundColor,
                                  size: 30,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      basdat[index].userName,
                                      style: TextStyle(color: Theme.of(context).accentColor,fontSize: 16,fontWeight:FontWeight.w600),
                                    ),
                                    Text(
                                      basdat[index].date,
                                      style: TextStyle(color: Theme.of(context).accentColor),
                                    ),
                                  ]),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              size: 24,
                              color: Theme.of(context).accentColor,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width - 40,
                          margin:
                              EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 10),
                          child: Text(basdat[index].comment,
                          style: TextStyle(color: Theme.of(context).accentColor,fontSize: 15) ,
                          )
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: MediaQuery.of(context).size.width - 10,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                  width: 2, color:Colors.white))),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text('Add class comment', style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                      )
                    ],
                  )
                );
              }
            )
          )
        ],
      )
    );
  }
}
