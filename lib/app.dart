import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  int _indexCourant=0;
  var textfieldVille = new TextEditingController();

  _onClick(int index){
    setState(() {
      _indexCourant=index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _ecrans= [
      //futureDesign(),
      //futureDesignMostView(),
        Padding(
          padding: const EdgeInsets.only(top: 10.0,left: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                  children: <Widget>[
                        SizedBox(
                            height: 170,
                            width: 150, // specific value
                            child: RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                onPressed: () {},
                                icon: Icon(Icons.cake,size: 60),
                                color: Colors.pink,
                                label: Text("My BDL"))
                        ),
                       /* RaisedButton.icon(
                            onPressed: (){

                            },
                            icon: Icon(Icons.cake,size: 80,),
                            color: Colors.pink,
                            label: Text("My BDL"),
                        ),*/
                        /*Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RaisedButton.icon(
                              onPressed: (){

                              },
                              icon: Icon(Icons.message,size: 80),
                              color: Colors.pink,
                              label: Text("FixMsg")
                          ),
                        ),*/
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                                height: 170,
                                width: 150, // specific value
                                child: RaisedButton.icon(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    onPressed: () {},
                                    icon: Icon(Icons.message,size: 60),
                                    color: Colors.pink,
                                    label: Text("FixMsg"))
                            ),
                          ),

                  ],
                ),
              Row(
                children: <Widget>[
                        /*RaisedButton.icon(
                            onPressed: (){

                            },
                            icon: Icon(Icons.library_music,size: 80),
                            color: Colors.pink,
                            label: Text("Melody")
                        ),*/
                          SizedBox(
                              height: 170,
                              width: 150, // specific value
                              child: RaisedButton.icon(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  icon: Icon(Icons.library_music,size: 60),
                                  color: Colors.pink,
                                  label: Text("Melody"))
                          ),

                        /*Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RaisedButton.icon(
                              onPressed: (){

                              },
                              icon: Icon(Icons.music_note,size: 80),
                              color: Colors.pink,
                              label: Text("Lyrics   ")
                          ),
                        )*/
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                                height: 170,
                                width: 150, // specific value
                                child: RaisedButton.icon(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    onPressed: () {},
                                    icon: Icon(Icons.music_note,size: 60),
                                    color: Colors.pink,
                                    label: Text("Lyrics   "))
                            ),
                          ),
                ],
              )
            ],
          ),
        ),
      Center(child: Text(" Vous etes dans My BDL !!!")),
      Center(child: Text(" Vous etes dans Fixed Message !!!")),
      Center(child: Text(" Vous etes dans Melody !!!")),
      Center(child: Text(" Vous etes dans Lyrics"))
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child:new AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            backgroundColor: Colors.pink,
            iconTheme: IconThemeData(color: Colors.white),
            title: Padding(
              padding: const EdgeInsets.only( top: 40.0,left: 0.0,right: 60.0),
              child: Image.asset(
                "image/logo.png",
                width: 150.0,
                height: 150.0,
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0,right: 20.0,bottom: 0.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("User_Name"),
                    ),
                    IconButton(
                      icon: Icon(Icons.account_circle, color: Colors.white,size: 45),
                      onPressed: () {},
                    )
                  ],
                ),
              )

            ],

      )),
//
      body: _ecrans[_indexCourant],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexCourant,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.pink,
        onTap: _onClick,
        items: [
          BottomNavigationBarItem(
              title: Text("Accueil",style: new TextStyle(
                fontSize: 10.0,
              ),), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("MY BDL",style: new TextStyle(
                fontSize:10.0,
              ),), icon: Icon(Icons.cake)),
          BottomNavigationBarItem(
              title: Text("Fix Message",style: new TextStyle(
                fontSize: 10.0,
              ),), icon: Icon(Icons.message)),
          BottomNavigationBarItem(
              title: Text("Melody",style: new TextStyle(
                fontSize: 10.0,
              ),), icon: Icon(Icons.library_music)),
          BottomNavigationBarItem(
              title: Text("Lyrics",style: new TextStyle(
                fontSize: 10.0,
              ),), icon: Icon(Icons.music_note)),
        ],
      ),

    );
  }
}
