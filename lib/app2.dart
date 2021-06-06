import 'package:flutter/material.dart';

import 'app.dart';

class App2 extends StatefulWidget {
  const App2({ Key key }) : super(key: key);

  @override
  _App2State createState() => _App2State();
}

class _App2State extends State<App2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                leading: IconButton(icon: Icon(Icons.arrow_back_ios,color:Colors.black,), onPressed: (){
                      Navigator.pop(context, 
                      MaterialPageRoute(builder:(context)=>App())); }),
         title:Center(child: Text('Ecom App UI',style: TextStyle(color:Colors.black),)),
         backgroundColor: Colors.white,
         actions: [IconButton(icon: Icon(Icons.notifications_active,color: Colors.black,), onPressed: (){})],
      ),
      body: SingleChildScrollView(
              child: Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child: Column(
            children:[
               TextField(decoration:InputDecoration(hintText: 'Username'),),
               Text('History'),
               abcd('Iphone 12','assets/iphone.jpg'),
               abcd('Note 20 Ultra','assets/note.jpg'),
               abcd('Macbook Air','assets/macbookair.jpg'),
               abcd('Macbook Pro','assets/macbookpro.jpg'),
               abcd('Gaming PC','assets/gamingpc.jpg'),
               abcd('Audi','assets/audi.jpg'),
               abcd('Mercedes','assets/merceedes.jpg'),
               abcd('Ferrari','assets/ferrari.jpg')
                      ])
        ),
      ),
    );
  }
}

Widget abcd(String text,String image){
  return ListTile(leading:CircleAvatar(backgroundImage: AssetImage(image),),
                    title:Text(text,style:TextStyle(fontWeight:FontWeight.bold )),
                    subtitle: Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          SizedBox(width:5),
                           Text(' 5.0 (23 Reviews)'), ],), 
                           trailing: Text('\$10'),
                    );
}