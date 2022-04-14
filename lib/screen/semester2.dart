import 'package:coba2/screen/classroomPage.dart';
import 'package:flutter/material.dart';
import 'package:coba2/data/classrooms.dart';

class Semester2 extends StatefulWidget {
  @override
  _Semester2State createState() => _Semester2State();
}

class _Semester2State extends State<Semester2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
        body: Container(
            child: Column(
              children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: semester2List.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => NavBar(
                          className: semester2List[index].className,
                          bannerImg: semester2List[index].bannerImg,
                          description: semester2List[index].description,
                          creator: semester2List[index].creator,
                        ))),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      margin: EdgeInsets.only(top: 5,right: 10,left: 10,bottom: 5),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                              child: Image(
                              image: semester2List[index].bannerImg,
                              fit: BoxFit.cover,
                              )
                            )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 22, left: 25),
                      width: 340,
                      child: Text(
                        semester2List[index].className,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 24,
                            ),
                        onPressed: () {},
                        // iconSize: 25,
                          ),
                        ],
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 46, left: 25),
                      child: Text(
                        semester2List[index].description,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 120, left: 25),
                      child: Text(
                        semester2List[index].creator,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                      ],
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).backgroundColor,
        onPressed: (){},
        child: const Icon(Icons.add,size: 30,color: Color((0xFF63CF93))),
      ),
    );
  }
}
