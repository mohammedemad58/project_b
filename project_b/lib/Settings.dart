import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {
  bool _swVal =false;
  //bool _darkMode=false;
  void _onChange(bool val){
    setState(() {_swVal=val;});
  }
  ThemeData _liteTheme = ThemeData(
    brightness: Brightness.light,
  );
  ThemeData _darkTheme = ThemeData(
      brightness: Brightness.dark,
  );
  // ThemeData _themeData=darkMode ? ThemeData.dark():ThemeData.light();
  // getTheme(){
  //   return _themeData;
  // }
  // setTheme(ThemeData theme){
  //   _themeData=theme;
  //   //notifyListeners();
  // }
  // void initState(){
  //   super.initState();
  //   setState(() =>_darkMode=_darkMode);
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:_swVal?_darkTheme:_liteTheme,
        home: Scaffold(
            body:SafeArea(
                child:ListView(
                    padding:EdgeInsets.all(20),
                    children: [
                      IconButton(onPressed: (){Navigator.pushNamed(context, '1');}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
                      Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.all(1),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      SizedBox(height: 30,width: 30),
                      ListTile(
                          title:Text('Dark mode'),
                          subtitle: Text(''),
                          leading:Icon(Icons.dark_mode),
                        trailing: Switch(
                            value: (_swVal), onChanged: _onChange,
                                activeColor: Colors.deepOrange),
                        ),
                      SizedBox(height: 10,width: 10),
                      ListTile(
                          title:Text('Change Email'),
                          subtitle: Text(''),
                          leading:Icon(Icons.alternate_email),
                          trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrange,),
                        onTap:(){Navigator.pushNamed(context, '3');}
                      ),
                      SizedBox(height: 10,width: 10),
                      ListTile(
                          title:Text('Change Password'),
                          subtitle: Text(''),
                          leading:Icon(Icons.password),
                          trailing: Icon(Icons.arrow_forward_ios,color:Colors.deepOrange),
                          onTap:(){Navigator.pushNamed(context, '2');}
                      ),
                      SizedBox(height: 10,width: 10),
                      ListTile(
                          title:Text('About App'),
                          subtitle: Text(''),
                          leading:Icon(Icons.info_outline),
                          trailing: Icon(Icons.arrow_forward_ios,color:Colors.deepOrange),
                        onTap:(){Navigator.pushNamed(context, '1');}
                      ),
                      SizedBox(height: 10,width: 10),
                      ListTile(
                          title:Text('Logout'),
                          subtitle: Text(''),
                          leading:Icon(Icons.logout),
                          trailing: Icon(Icons.arrow_forward_ios,color:Colors.deepOrange),
                        onTap: (){
                            //Sign In Page
                          }
                          ),
                          SizedBox(height: 10,width: 10),
                    ]
                )
            )
        )
    );
  
  }


}
