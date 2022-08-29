import 'package:flutter/material.dart';
class Change_Password extends StatefulWidget {
  const Change_Password({Key? key}) : super(key: key);
  @override
  State<Change_Password> createState() => _Change_PasswordState();
}
class _Change_PasswordState extends State<Change_Password> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
                children: <Widget>[
                IconButton(onPressed: (){Navigator.pushNamed(context, '0');}, icon:Icon(Icons.arrow_back_ios),alignment: Alignment.topLeft,),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Change your Password',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  ),]),
            padding: EdgeInsets.all(1),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon:Icon(Icons.password)
              ),
            ),
          ),
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(0,2)
                          ),]),
                    padding: EdgeInsets.all(1),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          prefixIcon:Icon(Icons.password)
                      ),
                    ),
                  ),
          ]
        )

        )
        )
    );
  }

}
