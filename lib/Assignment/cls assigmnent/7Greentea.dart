import 'package:firstflutterproject/Assignment/cls%20assigmnent/7greenteaitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '7Purchased.dart';

class Greentea extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.only(top:220),
            child: ClipRRect(borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Particulars',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Green tea is a type of tea that is made from Camellia sinensis leaves and buds'
                            ' that have not undergone the same withering and oxidation process '
                            'which is used to make oolong teas and black teas. ',
                            style:TextStyle(fontSize:10,)),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Row(
                          children: [
                            Icon(Icons.star,color:Colors.green ,),
                            Icon(Icons.star,color:Colors.green ,),
                            Icon(Icons.star,color:Colors.green ,),
                            Icon(Icons.star,color:Colors.green ,),
                            Icon(Icons.star,color:Colors.green ,),
                            Icon(Icons.star,color:Colors.green ,),
                            Icon(Icons.star,color:Colors.green ,),
                          ],
                        ),
                      ),
                    Row(

                    children: [
                      SizedBox(width: 20,),
                      item(img: Image(image: AssetImage('assets/Icons/cfee.png'),height: 50,width: 50,), txt:'coffee'),
                      SizedBox(width: 40,),
                      item(img: Image(image: AssetImage('assets/Icons/cappiciino.png'),height: 50,width: 50), txt: 'cappuccino'),
                      SizedBox(width: 40,),
                      item(img: Image(image: AssetImage('assets/Icons/soccer.png'),height: 50,width: 50), txt:'service'),

                    ],
                    ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Services',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('The services that you provide, including what you do, some basics '
                            'about how you do it and why people should care about the service.',
                          style:TextStyle(fontSize: 10) ,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:25,left: 250),
            child: Image(image: AssetImage('assets/Icons/greentea.png'),height: 300,width: 300,),
          ),
          Positioned(top:10,
            child: Row(
              children: [
                Icon(Icons.arrow_back,color: Colors.white,),
                SizedBox(width:400,),
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>purchased()));
                  },

                    child: FaIcon(FontAwesomeIcons.shoppingCart,color: Colors.white,)),
              ]),
            ),

          Positioned(top: 80,left: 20,
            child: Column(
              children: [
                Text('GreenTea',style:TextStyle(fontSize:15,color: Colors.white,fontWeight: FontWeight.bold),),
                Text('With mint flavour' ,style:TextStyle(fontSize:10,color: Colors.white),),
                SizedBox(height: 30,),
                Text('\$36',style:TextStyle(fontSize:25,color: Colors.white,fontWeight: FontWeight.bold),)
            ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: InkWell(
            onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>purchased()));
              },
              child: FaIcon(FontAwesomeIcons.shoppingCart)),label:'Cart'),
          BottomNavigationBarItem(icon:FaIcon(FontAwesomeIcons.heart),label: 'My'),
          BottomNavigationBarItem(icon:Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>purchased()));
             },style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child:Text('Purchased',style: TextStyle(color: Colors.white),)),
          ),label:'')
        ],
      ),
    );
  }

}