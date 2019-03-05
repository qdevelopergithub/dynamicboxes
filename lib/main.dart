import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(
    home: new Sample(),
    debugShowCheckedModeBanner: false,
    title: 'SampleBoxDynamic',
  ));
}

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => new _SampleState();
}

class _SampleState extends State<Sample> {

  double width = 100.0,
      height = 100.0;
  var first = 1;
  var i = 1;
  var boxtext = "FLUTTER";
  bool positionn = true;
  Offset position, position2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    position = Offset(width + 320, height - 50);
    position2 = Offset(width, height - 50);
  }

  @override
  Widget build(BuildContext context) {
    var pos = positionn ? Container(
      width: 100.0,
      height: 50.0,
      child: DragTarget(
        builder: (context, List<int> candidateData, rejectedData) {},
        onWillAccept: (data) {
          return true;
        },
        onAccept: (data) {
          if (data == 1) {
            print("True");
          }
        },
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFF1a0d71),
          width: 2,
        ),
      ),
    ) : new Container();

    config();
    return new Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Flexible(
              child: new Container(
                width: 220.0,
                margin: EdgeInsets.only(top: 120.0),
                child: new GridView.count(
                  padding: EdgeInsets.all(5.0),
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2,
                  crossAxisCount: 2,
                  children: new List<Widget>.generate(8, (index) {
                    return Container(
                      child: new GridTile(
                          child: Draggable(
                            data: index,
                            child: Container(
                              padding: EdgeInsets.all(2.0),
                              width: 100.0,
                              height: 50.0,
                              child: Center(
                                child: Text(
                                  boxtext + " " + index.toString(), style: Theme
                                    .of(context)
                                    .textTheme
                                    .button,
                                  textScaleFactor: 0.6,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                            ),
                            feedback: Container(
                              padding: EdgeInsets.all(2.0),
                              width: 100.0,
                              height: 50.0,
                              child: Center(
                                child: Text(boxtext, style: Theme
                                    .of(context)
                                    .textTheme
                                    .button,
                                  textScaleFactor: 0.6,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFF000000),
                                  width: 2,
                                ),
                              ),
                            ),
                            childWhenDragging: Container(
                              width: 100.0,
                              height: 50.0,
                            ),
                            onDragCompleted: () {

                            },
                            onDraggableCanceled: (Velocity velocity,
                                Offset offset) {
                              switch (index) {
                                case 0:
                                  print(index);
                                  break;
                                case 1:
                                  print(index);
                                  break;
                                case 2:
                                  print(index);
                                  break;
                                case 3:
                                  print(index);
                                  break;
                                case 4:
                                  print(index);
                                  break;
                                case 5:
                                  print(index);
                                  break;
                                case 6:
                                  print(index);
                                  break;
                                case 7:
                                  print(index);
                                  break;
                              }
                            },
                          )
                      ),
                    );
                  }),
                ),
              ),
            ),
             Flexible(
              child: new Container(
                width: 220.0,
                child: new GridView.count(
                  padding: EdgeInsets.all(5.0),
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2,
                  crossAxisCount: 2,
                  children: new List<Widget>.generate(8, (index) {
                    return Container(
                      child: new GridTile(
                        child: pos,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void config() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
}


/* new GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 30.0,
              padding: EdgeInsets.all(20.0),
              mainAxisSpacing: 30.0,
             // childAspectRatio: (itemWidth / itemHeight),
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: widgetList.map((String value) {
                return new Container(
                  height: 350.0,
                  color: Colors.green,
                  margin: new EdgeInsets.all(1.0),
                  child: new Center(
                    child: new Text(
                      value,
                      style: new TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),)*/
