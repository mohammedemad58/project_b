import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class About_app extends StatefulWidget {
  const About_app({Key? key}) : super(key: key);
  @override
  State<About_app> createState() => _About_appState();
}
class _About_appState extends State<About_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body:SafeArea(
              child:ListView(
                  padding:EdgeInsets.all(20),
                  children: [
                    IconButton(onPressed: (){Navigator.pushNamed(context, '0');}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
                    Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(1),
                        child: Text(
                          'About App',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    SizedBox(height: 30,width: 30),
                    ListTile(
                        title:Text('Facebook'),
                        subtitle: Text(''),
                        leading:Icon(Icons.facebook),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrange,),
                      onTap:(){Navigator.pushNamed(context, '4');}
                    ),
                    SizedBox(height: 10,width: 10),
                    ListTile(
                        title:Text('Twitter'),
                        subtitle: Text(''),
                        leading:Icon(FontAwesomeIcons.twitter),
                        trailing: Icon(Icons.arrow_forward_ios,color:Colors.deepOrange),
                      onTap:(){Navigator.pushNamed(context, '5');}
                    ),
                    SizedBox(height: 10,width: 10),
                    ListTile(
                        title:Text('Instagram'),
                        subtitle: Text(''),
                        leading:Icon(FontAwesomeIcons.instagram),
                        trailing: Icon(Icons.arrow_forward_ios,color:Colors.deepOrange),
                      onTap:(){Navigator.pushNamed(context, '6');}
                    ),
                    SizedBox(height: 10,width: 10),
                  ]
              )
          )
        )
    );
  }
}