import 'package:ecom_app/app2.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({ Key key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color:Colors.black,), onPressed: (){
                      Navigator.pop(context, 
                      MaterialPageRoute(builder:(context)=>App())); }),
        title:Row(
        children: [Center(child: Text('Ecom App UI',style: TextStyle(color:Colors.black),)),
        ],
      ),
      backgroundColor: Colors.white,
      actions: [IconButton(icon: Icon(Icons.notifications_active,color: Colors.black,), onPressed: (){})],
      ),
      body: SingleChildScrollView(
              child: Container(
          
          child: Container(
            width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
            child: Column(
              children:[
                abc('Iphone 12','assets/iphone.jpg'),
                SizedBox(height:10),
                abc('Note20 Ultra','assets/note.jpg'),
                SizedBox(height:10),
                abc('Macbook Air','assets/macbookair.jpg'),
                SizedBox(height:10),
                abc('Macbook Pro','assets/macbookpro.jpg'),
                SizedBox(height:10),
                abc('Gaming PC','assets/gamingpc.jpg'),
                IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                            Navigator.push(context, 
                            MaterialPageRoute(builder:(context)=>App2())); })
              ]
            ),
          ),
        ),
      )
    );
  }
}

Widget abc(String text,String image){
  return Stack(
              children:[ Container(
          width:390,
          height: 100,
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
          color:Colors.white,
          border: Border.all(color:Colors.grey)
          ),),
          Container(
          width:100,
          height: 98,
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
          color:Colors.white,
          border: Border.all(color:Colors.white),
           image: DecorationImage(image:AssetImage(image),fit: BoxFit.fill)
          ),
          ),
          Container(
            margin: EdgeInsets.only(left:100),
            padding: EdgeInsets.only(left:5),
            width:100,
            height:98,
            child: ListTile(
            title:Row(
              children: [
                Text(text,style:TextStyle(fontWeight:FontWeight.bold )),
              ],
            ) ,
            
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    SizedBox(width:5),
                     Text(' 5.0 (23 Reviews)'), ],),
               SizedBox(height:5),
                Row(
                  children: [
                    Text('20 Pieces'),
                    SizedBox(width:5),
                Text('\$90',style:TextStyle(fontWeight:FontWeight.bold,color: Colors.purple),),],),
                SizedBox(height:5),
                Row(
                  children: [
                    Text('Quantity: 1'),],)],
            ),
            ),
            
          )
        ]
      );
}
