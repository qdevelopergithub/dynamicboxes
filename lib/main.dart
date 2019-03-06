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
                              setState(() {
                                switch (index) {
                                  case 0:
                                }
                              });
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
                          child: Container(
                            width: 100.0,
                            height: 50.0,
                            child: DragTarget(
                              builder: (context, List<int> candidateData,
                                  rejectedData) {},
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                switch (data) {
                                  case 0:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 1:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 2:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 3:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 4:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 5:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 6:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
                                  case 7:
                                    print("Flutter " + data.toString() +
                                        " in Box " + index.toString());
                                    break;
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
                          )
                      ),
                    );
                  }),
                ),
              ),
            ),
           /* Flexible(
              child: new Container(
                child: new ListView.custom(
                    semanticChildCount: 2,
                    childrenDelegate: SliverChildListDelegate(children)),
              ),
            ),*/
            /* Flexible(
              child: ListView(
                children: <Widget>[
                  Text("Hello 1"),
                  Text("Hello 2"),
                  Text("Hello 3"),
                  Text("Hello 3"),
                  Text("Hello 3"),
                  Text("Hello 3"),
                  Text("Hello 3"),
                  Text("Hello 3"),
                  Text("Hello 3"),
                ],
              ),
            ),*/
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        position.toString(), style: TextStyle(fontSize: 22.0),),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              child: ListView.separated(
                itemBuilder: (context, position) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        position.toString(), style: TextStyle(fontSize: 22.0),),
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Separator builder " +
                          position.toString(),
                        style: TextStyle(fontSize: 22.0),),
                    ),
                  );
                },
                itemCount: 100,
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