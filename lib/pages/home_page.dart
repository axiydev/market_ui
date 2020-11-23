import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(
        centerTitle:false,
        leading:null,
        title:Text('Cars',style:TextStyle(color:Colors.red,fontSize:26)),
        brightness:Brightness.light,
        backgroundColor:Colors.white,
        bottomOpacity:0.0,
        elevation:0.0,
        actions:[
          //NOTIFICATION ICON
          IconButton(
            icon:Icon(Icons.notifications_none_outlined,size:23),
            color:Colors.red,
            onPressed:(){},
          ),
          //SHOPPING CART ICON
          IconButton(
            icon:Icon(Icons.shopping_cart_rounded,size:23),
            color:Colors.red,
            onPressed:(){},
          ),
        ],
      ),
      body:SingleChildScrollView(
        child:Container(
          padding:EdgeInsets.all(18),
          child:Column(
            children:[
              Container(
                height:42,
                child:ListView(
                  scrollDirection:Axis.horizontal,
                  children:[
                    //COLORS LISTVIEW
                    _makeView(true,'All'),
                    _makeView(false,'Red'),
                    _makeView(false,'Blue'),
                    _makeView(false,'Green'),
                    _makeView(false,'Yellow'),
                    _makeView(false,'Orange'),
                  ],
                ),
              ),
              SizedBox(height:20),
              //CARS
              makeCars('assets/images/im_car1.jpg'),
              makeCars('assets/images/im_car5.jpg'),
              makeCars('assets/images/im_car3.jpg'),
              makeCars('assets/images/im_car4.png'),
              makeCars('assets/images/im_car2.jpg'),
            ],
          ),
        ),
      ),
    );
  }
  Widget _makeView(bool type,String text){
    return AspectRatio(
      aspectRatio:2.2/1,
      child:Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(21),
          color:type ? Colors.red:Colors.white,
        ),
        child:Center(
          child:Text(text,style:TextStyle(color:type?Colors.white:Colors.black,fontSize:type?19:16,fontWeight:FontWeight.w500),),
        ),
      ),
    );
  }
  //CARS
  Widget makeCars(String image){
    return Container(
      height:240,
      margin:EdgeInsets.only(bottom:20),
      width:double.infinity,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(23),
        image:DecorationImage(
          image:AssetImage(image),
          fit:BoxFit.cover,
        ),
        boxShadow:[
          BoxShadow(color:Colors.grey[400],blurRadius:10,offset:Offset(0,10)),
        ],
      ),
      child:Container(
        height:240,
        padding:EdgeInsets.all(20),
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(23),
          gradient:LinearGradient(
            begin:Alignment.bottomRight,
            colors:[
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child:Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            //TEXT AND ICON
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                //PDP CAR ELECTRIC
                Row(
                  children:[
                    Text('PDP Car',style:TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),),
                    SizedBox(width:10),
                    Text('Electric',style:TextStyle(color:Colors.red,fontSize:20,fontWeight:FontWeight.w600)),
                  ],
                ),
                SizedBox(height:8),
                //100$
                Text('100\$',style:TextStyle(color:Colors.white,fontSize:23,fontWeight:FontWeight.bold),),
              ],
            ),
            //HEART ICON
            Container(
              height:35,
              width:35,
              decoration:BoxDecoration(
                shape:BoxShape.circle,
                color:Colors.red,
              ),
              child:Center(
                child:Icon(Icons.favorite_border,color:Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}