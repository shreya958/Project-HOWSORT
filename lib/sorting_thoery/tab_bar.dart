import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:howsort/visualizer/constants.dart';
import 'bubblesort.dart';
import 'insertion.dart';
import 'selection.dart';





class tab1_bar extends StatefulWidget {
  tab1_bar({Key key}) : super(key: key);
  @override
  _tab1_barState createState() => _tab1_barState();
}

class _tab1_barState extends State<tab1_bar> {


  @override
    Widget build(BuildContext context) {
    return  DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: newcolor2,
                flexibleSpace: SafeArea(
                     child: Padding(
                       padding: const EdgeInsets.only(top:20.0),
                       child: TabBar( 
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BubbleTabIndicator(
            indicatorHeight: 30.0,
            
            indicatorColor: Colors.pinkAccent,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
            
            // Other flags
            // indicatorRadius: 1,
            // insets: EdgeInsets.all(1),
            // padding: EdgeInsets.all(10)
          ),
                  labelColor: Color(0xFF274D85),
                  unselectedLabelColor: Color(0xFF274D85).withOpacity(0.6),
                  tabs: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Bubble Sort",
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Selection Sort",
                          style: TextStyle(fontSize: 16.0,  color: Colors.white),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Insertion Sort",
                          style: TextStyle(fontSize: 16.0,  color: Colors.white),
                        ),
                    ),
                  ],
                ),
                     ), 
              ),
              ),

              body: TabBarView(
                key: UniqueKey(),
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  bubbleAlgo(),
                  selectionAlgo(),
                  insertAlgo(),
                  
                  
                ],
              ),
            ),
          );
  }
  }