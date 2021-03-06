import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/counter.page.dart';
import 'package:flutter_first_app/pages/gallery/gallery.page.dart';
import 'package:flutter_first_app/pages/home/home.page.dart';
import 'package:flutter_first_app/pages/users.page.dart';
import 'package:flutter_first_app/pages/weather/weather.page.dart';

import 'drawer.header.dart';


class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            children : [
              MyDrawerHeaderWidget(),
              ListTile(
                //l'icone du home à gauche
                leading: Icon(Icons.home,color: Colors.purple),
                //la petite fléche à droite
                trailing: Icon(Icons.arrow_right,color:Colors.purple),
                title: Text("Home",style:TextStyle(fontSize: 18,color: Colors.purple)),
              onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  HomePage()));
              },
              ),
              Divider(
                color : Colors.purpleAccent
              ),
              ListTile(
                //l'icone du home à gauche
                leading: Icon(Icons.confirmation_number,color: Colors.purple),
                //la petite fléche à droite
                trailing: Icon(Icons.arrow_right,color:Colors.purple),
                title: Text("Counter",style:TextStyle(fontSize: 18,color: Colors.purple)),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  CounterPage()));
                },
              ),
              Divider(
                  color : Colors.purpleAccent
              ),
              ListTile(
                //l'icone du home à gauche
                  leading: Icon(Icons.supervised_user_circle,color: Colors.purple),
                  //la petite fléche à droite
                  trailing: Icon(Icons.arrow_right,color:Colors.purple),
                  title: Text("Users",style:TextStyle(fontSize: 18,color: Colors.purple)),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => UsersPage()));
                  }
              ),
              Divider(
                  color : Colors.purpleAccent
              ),
              ListTile(
                //l'icone du home à gauche
                  leading: Icon(Icons.image,color: Colors.purple),
                  //la petite fléche à droite
                  trailing: Icon(Icons.arrow_right,color:Colors.purple),
                  title: Text("Gallery",style:TextStyle(fontSize: 18,color: Colors.purple)),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => GalleryPage()));
                  }
              ),
              Divider(
                color: Colors.purpleAccent,
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny,color: Colors.purple,),
                trailing: Icon(Icons.arrow_right,color:Colors.purple),
                title: Text("Weather",style: TextStyle(fontSize: 18,color: Colors.purple)),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>WeatherPage()
                  ));
                },
              )
            ]
        )
    );
  }
}
