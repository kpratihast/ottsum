// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:gallery/l10n/gallery_localizations.dart';


void main() {
  runApp(Prac());
}

class Prac extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ottsum',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.black,
        accentColor: Colors.teal,
        fontFamily: 'Roboto',
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Current Subscriptions'),


    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _showFab = true;
  var _showNotch = true;
  var _fabLocation = FloatingActionButtonLocation.endDocked;




//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//class BottomAppBarDemo extends StatefulWidget {
//  const BottomAppBarDemo();
//
//  @override
//  State createState() => _BottomAppBarDemoState();
//}
//
//class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
//  var _showFab = true;
//  var _showNotch = true;
//  var _fabLocation = FloatingActionButtonLocation.endDocked;

//  void _onShowNotchChanged(bool value) {
//    setState(() {
//      _showNotch = value;
//    });
//  }

//  void _onShowFabChanged(bool value) {
//    setState(() {
//      _showFab = value;
//    });
//  }

//  void _onFabLocationChanged(FloatingActionButtonLocation value) {
//    setState(() {
//      _fabLocation = value;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        //backgroundColor: Colors.black38,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Get started by clicking the + button'
                    '\n'
                ,
                style: TextStyle(
                  color: Colors.white,)
            ),
            const Icon(Icons.sentiment_very_satisfied,color:Colors.white)

          ],
        ),
      ),
      floatingActionButton: _showFab
          ? FloatingActionButton(
        onPressed: () {
          print('Floating action button pressed');
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal[400],
        //tooltip: GalleryLocalizations.of(context).buttonTextCreate,
      )
          : null,
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: _fabLocation,
        shape: _showNotch ? const CircularNotchedRectangle() : null,
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation,
    this.shape,


  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;


  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.black,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
        child: Row(
          children: [
            IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(Icons.subscriptions),
              color:Colors.teal[400] ,
              onPressed: () {
                print('Menu button pressed');
              },
            ),
            //if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              //tooltip: GalleryLocalizations.of(context).starterAppTooltipSearch,
              icon: const Icon(Icons.playlist_add),
              //color:Colors.teal[400] ,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridListDemo()),
                );
              },
            ),
            IconButton(
              // tooltip:              GalleryLocalizations.of(context).starterAppTooltipFavorite,
              icon: const Icon(Icons.person),
              //color:Colors.teal[400] ,
              onPressed: () {
                print('Favorite button pressed');
              },
            ),
            IconButton(
              // tooltip:              GalleryLocalizations.of(context).starterAppTooltipFavorite,
              icon: const Icon(Icons.settings),
              //color:Colors.teal[400] ,
              onPressed: () {
                print('Favorite button pressed');
              },
            ),
            IconButton(
              // tooltip:              GalleryLocalizations.of(context).starterAppTooltipFavorite,
              icon: const Icon(Icons.textsms),
              //color:Colors.teal[400] ,
              onPressed: () {
                print('Favorite button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}


// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//enum GridListDemoType {
//  imageOnly,
//  header,
//  footer,
//}

class GridListDemo extends StatelessWidget {
  const GridListDemo({Key key}) : super(key: key);

//  final GridListDemoType type;

  List<_Photo> _photos(BuildContext context) {
    return [
      _Photo(
        assetName: 'assets/images/netflix.png',
        title: 'OTT',
        subtitle: 'Netflix India',
      ),
      _Photo(
        assetName: 'assets/images/primevid.jpg',
        title: 'OTT',
        subtitle: 'Amazon Prime Video',
      ),
      _Photo(
        assetName: 'assets/images/hotstar.png',
        title: 'OTT',
        subtitle: 'Hotstar',
      ),
      _Photo(
        assetName: 'assets/images/Zee5.png',
        title: 'OTT',
        subtitle: 'Zee5',
      ),
      _Photo(
        assetName: 'assets/images/Hulu.png',
        title: 'OTT',
        subtitle: 'Hulu',
      ),
      _Photo(
        assetName: 'assets/images/sonyliv.jpg',
        title: 'OTT',
        subtitle: 'Sony LIV',
      ),
      _Photo(
        assetName: 'assets/images/Aha.jpeg',
        title: 'OTT',
        subtitle: 'Aha',
      ),
      _Photo(
        assetName: 'assets/images/voot.jpg',
        title: 'OTT',
        subtitle: 'VOOT',
      ),
      _Photo(
        assetName: 'assets/images/hotstart.jpg',
        title: 'OTT',
        subtitle: 'Disney+Hotstar',
      ),
      _Photo(
        assetName: 'assets/images/voot.jpg',
        title: 'OTT',
        subtitle: 'VOOT',
      ),
      _Photo(
        assetName: 'assets/images/hotstart.jpg',
        title: 'OTT',
        subtitle: 'Disney+Hotstar',
      ),
      _Photo(
        assetName: 'assets/images/hotstart.jpg',
        title: 'OTT',
        subtitle: 'Disney+Hotstar',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Available Subscriptions'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: const EdgeInsets.all(8),
        childAspectRatio: 1,
        children: _photos(context).map<Widget>((photo) {
          return _GridDemoPhotoItem(
            photo: photo,
//            tileStyle: type,
          );
        }).toList(),
      ),
//      backgroundColor: Colors.gre,
    );
  }
}

@override
Widget build(BuildContext context) {
  return BottomAppBar(
//    shape: shape,
    color: Colors.black,
    child: IconTheme(
      data: IconThemeData(color: Theme
          .of(context)
          .colorScheme
          .onSecondary),
      child: Row(
        children: [
          IconButton(
            tooltip: MaterialLocalizations
                .of(context)
                .openAppDrawerTooltip,
            icon: const Icon(Icons.subscriptions),
            //color: Colors.teal[400],
            onPressed: () {
              print('Menu button pressed');
            },
          ),
          //if (centerLocations.contains(fabLocation)) const Spacer(),
          IconButton(
            //tooltip: GalleryLocalizations.of(context).starterAppTooltipSearch,
            icon: const Icon(Icons.playlist_add),
            color:Colors.teal[400] ,
            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => GridListDemo()),
//              );
            },
          ),
          IconButton(
            // tooltip:              GalleryLocalizations.of(context).starterAppTooltipFavorite,
            icon: const Icon(Icons.person),
            //color:Colors.teal[400] ,
            onPressed: () {
              print('Favorite button pressed');
            },
          ),
          IconButton(
            // tooltip:              GalleryLocalizations.of(context).starterAppTooltipFavorite,
            icon: const Icon(Icons.settings),
            //color:Colors.teal[400] ,
            onPressed: () {
              print('Favorite button pressed');
            },
          ),
          IconButton(
            // tooltip:              GalleryLocalizations.of(context).starterAppTooltipFavorite,
            icon: const Icon(Icons.textsms),
            //color:Colors.teal[400] ,
            onPressed: () {
              print('Favorite button pressed');
            },
          ),
        ],
      ),
    ),
  );
}

class _Photo {
  _Photo({
    this.assetName,
    this.title,
    this.subtitle,
  });

  final String assetName;
  final String title;
  final String subtitle;
}

/// Allow the text size to shrink to fit in the space
class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}

class _GridDemoPhotoItem extends StatelessWidget {
  _GridDemoPhotoItem({
    Key key,
    @required this.photo,
//    @required this.tileStyle,
  }) : super(key: key);

  final _Photo photo;
//  final GridListDemoType tileStyle;

  @override
  Widget build(BuildContext context) {
    final Widget image = Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        photo.assetName,
//        package: 'flutter_gallery_assets',
        fit: BoxFit.cover,
      ),
    );

//    switch (tileStyle) {
//      case GridListDemoType.imageOnly:
//        return image;
//      case GridListDemoType.header:
//        return GridTile(
//          header: Material(
//            color: Colors.transparent,
//            shape: const RoundedRectangleBorder(
//              borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
//            ),
//            clipBehavior: Clip.antiAlias,
//            child: GridTileBar(
//              title: _GridTitleText(photo.title),
//              backgroundColor: Colors.black45,
//            ),
//          ),
//          child: image,
//        );
//      case GridListDemoType.footer:
    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.black45,
          title: _GridTitleText(photo.title),
          subtitle: _GridTitleText(photo.subtitle),
        ),
      ),
      child: image,
    );
  }
//    return null;
//  }
}

