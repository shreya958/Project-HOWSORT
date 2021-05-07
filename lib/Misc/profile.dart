import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:howsort/visualizer/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';







class profile extends StatelessWidget {
  bool isEditable  =false;
  String title = "password";
  Color p = const Color(0xFFF46188);
  Color b = const Color(0xFF491D7F);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
              appBar: AppBar(
          backgroundColor: newcolor1,
          centerTitle: true,
          title: Text("HowSort", textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:Colors.white, fontFamily: 'Yatra_One'),),
          
        ),



        body: SingleChildScrollView (
            child: Container(

              child:
              Column(

                  children: [

                    new Row(

                      children: <Widget>[
                        new Container(

                            width: 100.0,
                            height: 100.0,
                            margin: const EdgeInsets.only(top:35.0, left:45.0,right:30.0,bottom:25.0),
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,

                                    image: new NetworkImage(
                                        "https://m.media-amazon.com/images/M/MV5BMTAxNTYzMTQyNDBeQTJeQWpwZ15BbWU3MDk3MTA3MjE@._V1_UY268_CR15,0,182,268_AL_.jpg")
                                )
                            )),
                        new Column(
                          children: [
                            new Text("JOEY ",
                                textScaleFactor: 1.5,style:TextStyle(fontWeight: FontWeight.bold)),
                            new Text("TRIBIANNI",textScaleFactor: 1.5,style:TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        new IconButton(icon:Icon(Icons.edit), onPressed: null)


                      ],
                    ),
                    new Column(

                      children:<Widget> [
                        new Container(
                          alignment : Alignment.topRight ,
                          margin: EdgeInsets.only(right: 40.0),
                          child: new Text("email"),

                        ),
                        Container(

                          padding: EdgeInsets.only(left:35.0,top:10.0,bottom:9.0,right:35.0),
                          child: new TextField(

                            controller: TextEditingController()..text = "joey.food@swiggy.com",

                            decoration: InputDecoration(
                              fillColor: Colors.pink[200],
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),

                            ),
                          ),
                        ),
                        new Container(
                          alignment : Alignment.bottomRight ,
                          margin: EdgeInsets.only(right: 35.0),
                          child: new Text("password"),

                        ),
                        new Container(
                          padding: EdgeInsets.only(left:35.0,top:10.0,bottom:9.0,right:35.0),
                          child:TextField(
                            controller: TextEditingController()..text = title,
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.pink[200],

                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: (){

                                  },
                                )
                            ),

                          ),
                        )
                      ],
                    ),
                    new Column(
                      children: [
                        new Container(
                          padding: EdgeInsets.only(top:13.0,left:20.0,bottom: 10.0),
                          alignment : Alignment.bottomLeft ,
                          child: new Text("progress.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),

                        ),

                        new Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:<Widget> [
                            Padding(

                              padding: EdgeInsets.all(10.0),
                              child:

                              new LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 100,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 15.0,
                                leading: new Text("Bubble Sort"),

                                percent: 0.4,

                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Color(0xFFF46188),
                              ),
                            ),
                            Padding(

                              padding: EdgeInsets.all(10.0),
                              child:

                              new LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 100,
                                animation: true,
                                animationDuration: 1000,
                                lineHeight: 15.0,
                                leading: new Text("Selection sort"),

                                percent: 0.8,

                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Color(0xFF491D7F),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                    new Row(
                        children: [
                          new Container(
                            alignment : Alignment.bottomLeft ,
                            padding: EdgeInsets.only(left:20.0,top:14.0,bottom: 7.0),
                            child: new Text("Acheivements",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),

                          ),]),
                    new SizedBox(
                        height: 100,
                        child: new ListView(

                          scrollDirection: Axis.horizontal,
                          children : [
                            Container(
                              child: new Card(
                                  color: b,
                                  shape :  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0)) ,

                                  child:  SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              child:  IconButton(
                                                icon: Icon(Icons.wine_bar_rounded,color: p), onPressed: () {  },
                                              ),
                                            ) ,
                                            Container(
                                                child: Text("Bubble Sort",style: TextStyle(color: Colors.white))
                                            )
                                          ],
                                        ),
                                      )
                                  )
                              ),
                            ),
                            Container(

                              child: new Card(
                                  color: b,
                                  shape :  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0)) ,

                                  child:  SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              child:  IconButton(
                                                icon: Icon(Icons.wine_bar_rounded,color: p), onPressed: () {  },
                                              ),
                                            ) ,
                                            Container(
                                                child: Text("Bubble Sort",style: TextStyle(color: Colors.white))
                                            )
                                          ],
                                        ),
                                      )
                                  )
                              ),
                            ),
                            Container(
                              child: new Card(
                                  color: b,
                                  shape :  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0)) ,

                                  child:  SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              child:  IconButton(
                                                icon: Icon(Icons.wine_bar_rounded,color: p,), onPressed: () {  },

                                              ),
                                            ) ,
                                            Container(
                                                child: Text("Bubble Sort",style: TextStyle(color: Colors.white),)
                                            )
                                          ],
                                        ),
                                      )
                                  )
                              ),
                            ),
                            Container(
                              child: new Card(
                                  color: b,
                                  shape :  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0)) ,

                                  child:  SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              child:  IconButton(
                                                icon: Icon(Icons.wine_bar_rounded,color: p), onPressed: () {  },
                                              ),
                                            ) ,
                                            Container(
                                                child: Text("Bubble Sort",style: TextStyle(color: Colors.white))
                                            )
                                          ],
                                        ),
                                      )
                                  )
                              ),
                            ),
                          ],



                        )),


                    new Row(

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        Container(
                         child: Padding(
                        padding: const EdgeInsets.only(bottom:8.0),
                        child: new TextButton(
                            child: Text("Logout"),
                            onPressed: () {
                              Navigator.of(context).pushNamed("/login");
                            },
                          ),
                     ),
                   ),
                      ],
                    )

                  ]

              ),

            ) )

    );



  }
}
