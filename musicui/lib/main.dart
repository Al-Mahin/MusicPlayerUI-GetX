import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:musicui/screen/home_screem.dart';
import 'package:musicui/screen/playlist_screen.dart';
import 'package:musicui/screen/song_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:  Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white
        )
   
      ),
      home: PlayListScreen(), 
      //HomeScreen(),
      getPages: [GetPage(name: '/', page: ()=>HomeScreen(),),
      GetPage(name: '/song', page: ()=>SongScreen(),),
      GetPage(name: '/playlist', page: ()=>PlayListScreen(),),
    
  
      ],
    
debugShowCheckedModeBanner: false,
    );
  


  }
}