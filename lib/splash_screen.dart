import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'app.dart';
import 'slider.dart';


import 'package:shimmer/shimmer.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> with TickerProviderStateMixin {

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 9), onClose);
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );
    _animation = Tween<double>(begin: 0.0,end: 1.0).animate(_animationController);
    _animationController.forward();
  }
  
  /*@override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("image/fond.jpg"), context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,title: Text('BDL'),),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/fond.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            *//*ScaleTransition(
                scale: _animation,
                child: Image.asset('image/art.png',repeat: ImageRepeat.noRepeat)
            ),*//*
            Image.asset('image/art.png',repeat: ImageRepeat.noRepeat),
            ScaleTransition(scale: _animation,child: Image.asset('image/logo.png',repeat: ImageRepeat.noRepeat)),
            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: Shimmer.fromColors(
                baseColor: Color(0xff000000),
                highlightColor: Color(0xffe100ff),
                child: Text(
                  'Birth Day Light',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Pacifico-Regular',
                      shadows: <Shadow>[
                        Shadow(
                            blurRadius: 18.0,
                            color: Colors.black12,
                            offset: Offset.fromDirection(120,12)
                        )
                      ]
                  ),
                ),
              ),
            ),

            //Center(child: Image.asset('image/art.png',height: 70.0,width: 70.0,)),

          ],
        ),
      ),
    );

  }*/
  Widget build(BuildContext context) {
    precacheImage(AssetImage("image/fond.jpg"), context);
    /*return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(' BDL ', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/fond.jpg"), fit: BoxFit.fill)),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('image/art.png', repeat: ImageRepeat.noRepeat,),
            ScaleTransition(scale: _animation,child: Image.asset('image/logo.png', repeat: ImageRepeat.noRepeat)),
            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: Shimmer.fromColors(
                baseColor: Color(0xff000000),
                highlightColor: Color(0xffe100ff),
                child: Text(
                  'Birth Day Light',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Pacifico-Regular',
                      shadows: <Shadow>[
                        Shadow(
                            blurRadius: 18.0,
                            color: Colors.black12,
                            offset: Offset.fromDirection(120, 12)
                        )
                      ]
                  ),
                ),
              ),
            ),

            //Center(child: Image.asset('image/art.png',height: 70.0,width: 70.0,)),

          ],
        ),
      ),
    );*/

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/fond.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ScaleTransition(scale: _animation,child: Image.asset('image/art.png',repeat: ImageRepeat.noRepeat)),
                ScaleTransition(scale: _animation,child: Image.asset('image/logo.png', repeat: ImageRepeat.noRepeat)),
                ScaleTransition(
                  scale: _animation,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 140.0),
                    child: Shimmer.fromColors(
                      baseColor: Color(0xff000000),
                      highlightColor: Color(0xffe100ff),
                      child: Text(
                        'Birth Day Light',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Pacifico-Regular',
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 18.0,
                                color: Colors.black12,
                                offset: Offset.fromDirection(120,12)
                              )
                            ]
                        ),
                      ),
                    ),
                  ),
                )

                //Center(child: Image.asset('image/art.png',height: 70.0,width: 70.0,)),

              ],
            ),
          ),
        ),
      ),
    );

  }


  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) =>  SliderScreen(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}
