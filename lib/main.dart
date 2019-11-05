import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angres Repuestos',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ItemView(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class ItemView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(),
      backgroundColor: Color(0xff067014),
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 26),
          alignment: Alignment.center,
          color: Color(0xffffffff),
          child: Row( children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/images/guy.jpg', fit: BoxFit.contain),
            ), 
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo_GoW.jpg', fit: BoxFit.contain)
            ),
          ]),
        )
      ),
      body: Column( children: [
        // column item 1: row for the navbar
        Row( children: [
          Expanded(
            // hamburger btm
            child: Container(
              color: Colors.black,
              height: 45,
              alignment: Alignment.centerLeft,
              // padding: EdgeInsets.all(13),
              // child: GestureDetector(
              //   onTap: () => _scaffoldKey.currentState.openDrawer(),
              //   child: Image.asset('assets/images/hamburger.jpg', fit: BoxFit.scaleDown,)
              // )
              child: IconButton(
                  icon: Icon(Icons.dehaze,
                  color: Colors.white
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              )
            )
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              height: 45,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(8),
              child: Image.asset('assets/images/cart_WoB.jpg', fit: BoxFit.contain,)
            ),
          )]
        )]
        
      )
    );
  }
}


class ListItems extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(),
      backgroundColor: Color(0xff067014),
      appBar: PreferredSize(
      preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 24),
          alignment: Alignment.center,
          color: Color(0xff067014),
          child: AppBar(
            centerTitle: true,
            title: Image.asset('assets/images/logo_GoW.jpg', fit: BoxFit.fitWidth),
            backgroundColor: Colors.white,
          )
        )
      ),
      body: Column(
        children: [
          // column item 1: row for the navbar
          Row(
            children: [
              Expanded(
                // hamburger btm
                child: Container(
                  color: Colors.black,
                  height: 45,
                  alignment: Alignment.centerLeft,
                  // padding: EdgeInsets.all(13),
                  // child: GestureDetector(
                  //   onTap: () => _scaffoldKey.currentState.openDrawer(),
                  //   child: Image.asset('assets/images/hamburger.jpg', fit: BoxFit.scaleDown,)
                  // )
                  child: IconButton(
                      icon: Icon(Icons.dehaze,
                      color: Colors.white
                    ),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  )
                )
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  height: 45,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/images/cart_WoB.jpg', fit: BoxFit.scaleDown,)
                ),
              )
            ]
          ),
          // column item 2: gridview
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(2.5),
              crossAxisCount: 3,
              children: List.generate(18, (index) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(9.0),
                    border: Border.all(
                      color: Color(0xf00000000),
                      width: 0
                    ),
                    color: Colors.white,
                  ),
                  height: 150,
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.asset(
                          'assets/images/hammer.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 5),
                        child: RichText(
                          text: TextSpan(
                            text:'\$ ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text:'00.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ]
                          )
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 5, right: 5, top: 3),
                        child: Text(
                          'description blah blah blah blah',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              })
            )
          )
        ]
      )
    );
  }
}
