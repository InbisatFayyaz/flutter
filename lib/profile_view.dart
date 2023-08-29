import 'package:first_project/widgets/chat_tile_widget.dart';
import 'package:flutter/material.dart';


/*class ProfileView extends StatelessWidget{
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Column(
        children: [     
          
         // Image.asset("assests/images/flower.jpg"),
        // CircleAvatar(backgroundImage:AssetImage("assests/images/flower.jpg")),        
          chatTileWidget(name: "XYZ", message: "HY", time: "9:00 PM",),
          //Image.asset("assests/images/flower.jpg"),
           chatTileWidget(name: "Bilal", message: "hy...", time: "7:00 PM"),
            chatTileWidget(name: "ABC", message: "may..", time: "5:00 PM"),
            /*Container(
            width: 300,
            height: 200
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              
              border: Border.all(width: 10,color : Colors.red),
            ),
          ),*/
        ]
      
      )
    );    
  }
}*/

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter=0;

 /* addValue(){
    setState(() {
      counter++;
    });
  }*/

  TextEditingController itemcontroller= TextEditingController();
  TextEditingController updatecontroller= TextEditingController();
  
  
  addItem(){
      setState(() {
      if(itemcontroller.text.isNotEmpty){
        friendList.add(itemcontroller.text);
      }});
      print(friendList);
     // friendList.removeAt(i);
      itemcontroller.clear(); 
  }

  deleteItem({required i}){
    setState(() {
      friendList.removeAt(i);
    });
  }

  List friendList=["Owais","Bilal","Ali"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: itemcontroller,
        ),
      ),
      body: SafeArea(
        
        child: ListView.builder(
        itemCount: friendList.length,  
        physics: NeverScrollableScrollPhysics(), 
        shrinkWrap: true,   //statement
        itemBuilder: (context, index){
          return ListTile(
            tileColor: Colors.grey,
            title: Text(
              friendList[index],
            ),
            trailing: Wrap(
              children: [
                IconButton(
              onPressed: (   )
              
                //updateItemController.text = friendList[index];
            
              {
                updatecontroller.text = friendList[index];
                showDialog(context: context, barrierDismissible:true, builder:  (context){
                return AlertDialog(
                  title: Text("Update dialog"),
                  content: TextField(
                     controller:updatecontroller,
                  ),
                  actions: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        friendList[index]= updatecontroller.text;
                      });
                      updatecontroller.clear();
                      Navigator.pop(context);
                    }, 
                    child: Text("Upadate"),)

                  ],
                );
              },
                );
              },
                //friendList.removeAt(index);
                //print(index);
              
              icon: const Icon(Icons.edit),
            ),
            IconButton(onPressed: (){deleteItem(i: index);
            },
            icon: const
            Icon(Icons.delete),
            ),
              ],
            ),
             //IconButton(
              ///onPressed: (){
                //friendList.removeAt(index);
                //print(index);
              //},
              //icon: const Icon(Icons.delete),
            //),
          );
        },
        ),
       // ],
      ),
      

        floatingActionButton: FloatingActionButton(
          onPressed: (){
         //   deleteItem(i:index);
         addItem();
        },
        child: const Text("Add"),
        ),
    );
  }
  }
     
     
     // body: Column(
       // children: [
         // Text("counter: $counter", style: TextStyle(fontSize: 40),
          //),
          //ElevatedButton(onPressed: (){}, child: Text("Add value")),         
        //],
     // );
    //);
    //return const Placeholder();
  //}
//}

    

  
