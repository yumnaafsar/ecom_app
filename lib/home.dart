import 'package:ecom_app/app.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:Center(child: Text('Ecom App UI',style: TextStyle(color:Colors.black),)),
         backgroundColor: Colors.white,
         actions: [IconButton(icon: Icon(Icons.notifications_active,color: Colors.black,), onPressed: (){})],
      ),
      body:SingleChildScrollView(
              child: Column(
            children:[
              Row(children: [
               Image.asset('assets/logo.png',width: 200,height: 200,),
               Column(
                 children: [
                   Text('USER',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   SizedBox(height:10),
                    Text('abc@gamil.com'),
                    SizedBox(height:20),             
                    Text('logout',style: TextStyle(color:Colors.purple),), ],),], ),
                    Row(
                      children: [
                        Text("ACCOUNT INFORMATION",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20))],
                    ),
                    SizedBox(height:5),
                    Row(children: [
                      ListTile(title:Text('Full Name',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15 )),
                      subtitle:TextField(decoration:InputDecoration(hintText: 'User' )),)],),
                    Row(children: [
                      ListTile(title:Text('Email',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15 )),
                      subtitle:TextField(decoration:InputDecoration(hintText: 'user@gmail.com' )),)
                    ],),
                    Row(children: [
                      ListTile(title:Text('Phone',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15 )),
                      subtitle:TextField(decoration:InputDecoration(hintText: '+0900-78601' )),)
                    ],),
                    Row(children: [
                      ListTile(title:Text('Address',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15 )),
                      subtitle:TextField(decoration:InputDecoration(hintText: 'New York,Random Street House No.72' )),)
                    ],),
                    Row(children: [
                      ListTile(title:Text('Gender',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15 )),
                      subtitle:TextField(decoration:InputDecoration(hintText: 'Female' )),)
                    ],),
                    Row(children: [
                      ListTile(title:Text('Date of Birth',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15 )),
                      subtitle:TextField(decoration:InputDecoration(hintText: 'OCTOBER 13,1998' )),)
                    ],),
                    IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder:(context)=>App())); })
                    ]),
      ),
      
    );
  }
}