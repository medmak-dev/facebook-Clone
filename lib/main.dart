import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,

    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    
     body:  new Column( 
       // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
               
                 Container( 
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top:17,left: 7),
           color: Colors.white,
            child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
              height: 100,
              width: 135,
          
            //color: Colors.grey[900],
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Medbook.png"),fit:BoxFit.contain),
            ),
            ),
         
              ],
            )
            ),
      
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right:10,bottom:10,top:5),
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              /* Expanded(
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     color: Colors.grey[200],

                   ),
                   child: TextField(
                  
                     keyboardType: TextInputType.text,
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.search,color:Colors.grey),
                       border: InputBorder.none,
                       hintStyle: TextStyle(color: Colors.grey),
                       hintText: "Search",
                     ),

                   ),
                   ,

               ),
               ),*/
               
               SizedBox(width:20),
               Icon(Icons.home,color:Colors.blueAccent,size:29),
               SizedBox(width:20),
               Icon(Icons.people_outline,color:Colors.grey[600],size:29),
                SizedBox(width:20),
               Icon(Icons.supervised_user_circle,color:Colors.grey[600],size:29),
               SizedBox(width:20),
               Icon(Icons.live_tv,color:Colors.grey[600],size:29),
               SizedBox(width:20),
               Icon(Icons.notifications_none,color:Colors.grey[600],size:29),
               SizedBox(width:20),
               Icon(Icons.menu,color:Colors.grey[600],size:29),
              
              ],
            ),
          ),
         
         Expanded(
            child: SingleChildScrollView(
              scrollDirection:Axis.vertical,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  
                   Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width:40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color:Colors.white),
                image: DecorationImage(
                  image: AssetImage("assets/images/story/avatar.jpg"),
                  fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
           child: Container(
             padding: EdgeInsets.only(left:5),
              height: 36,
          decoration:  BoxDecoration(
            color:Colors.grey[300],
            borderRadius: BorderRadius.circular(40),),
            child:TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Que voulez-vous dire ? ",
                hintStyle: TextStyle(color: Colors.grey[600],fontSize: 15,fontStyle: FontStyle.italic),
                border: InputBorder.none,
              )
            ),
               
          ),
        ),
        Container(
          width: 40,
          height: 40,
          child: Icon(Icons.photo_library,color: Colors.grey[400],),
        )
        ],
        ),
         SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.baseline,//??
                    textBaseline: TextBaseline.alphabetic,//??
                    children: [
                      textCustom("Stories",fontWeight: FontWeight.bold,size: 22.0,color: Colors.grey[900]),
                      textCustom("See Archive",color: Colors.grey[800])
                    ],
                  ),
                SizedBox(height:20),
                new Container(
                  height: 180,
                  child:ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      makeNewStorie(userImage: 'assets/images/story/avatar.jpg'),
                      makeStorie(
                        storyImage: 'assets/images/profil1.jpeg',
                      userImage:'assets/images/profil1.jpeg',
                      userName: "Mylone foko" ),//on cree une story grace a la fonction
                      makeStorie(
                        storyImage: 'assets/images/profil2.jpeg',
                      userImage:'assets/images/profil2.jpeg',
                      userName: "Arlette Claire"),
                      makeStorie(
                        storyImage: 'assets/images/profil3.jpeg',
                      userImage:'assets/images/profil3.jpeg',
                      userName: "Kamdem Foko" ),
                       makeStorie(
                        storyImage: 'assets/images/profil4.jpeg',
                      userImage:'assets/images/profil4.jpeg',
                      userName: "Auriane Stephani " ),
                       makeStorie(
                        storyImage: 'assets/images/story/avatar.jpg',
                      userImage:'assets/images/story/avatar.jpg',
                      userName: "Claudine Rosalie" ),
                      //dupliqué
                       makeStorie(
                        storyImage: 'assets/images/profil1.jpeg',
                      userImage:'assets/images/profil1.jpeg',
                      userName: "Mylone foko" ),//on cree une story grace a la fonction
                      makeStorie(
                        storyImage: 'assets/images/profil2.jpeg',
                      userImage:'assets/images/profil2.jpeg',
                      userName: "Arlette Claire"),
                      makeStorie(
                        storyImage: 'assets/images/profil3.jpeg',
                      userImage:'assets/images/profil3.jpeg',
                      userName: "Kamdem Foko" ),
                       makeStorie(
                        storyImage: 'assets/images/profil4.jpeg',
                      userImage:'assets/images/profil4.jpeg',
                      userName: "Auriane Stephani " ),
                       makeStorie(
                        storyImage: 'assets/images/story/avatar.jpg',
                      userImage:'assets/images/story/avatar.jpg',
                      userName: "Claudine Rosalie" ),


                    ],
                  ) ,
                ),
                SizedBox(height:40), 
                makeFeet(userName:"Mylone Foko",userImage:'assets/images/profil1.jpeg',feetTime:"il y'a 1 heure",feetText:"les cakes au chocolat c'est la vie, miammm!!",feetImage:'assets/images/story/cakes1.jpeg'),
                 makeFeet(userName:"Yanick Atala",userImage:'assets/images/profil2.jpeg',feetTime:"il y'a 12 heure",feetText:"la chute d'un homme n'est pas la fin de sa vie. Avant d'afronter tes probléme mange dabord!!",feetImage:'assets/images/story/cakes2.jpeg'),
                  makeFeet(userName:"Francklin Takam",userImage:'assets/images/profil4.jpeg',feetTime:"Il y'a 5 minutes",feetText:"je te préfère avec une balle dans la tête au moin je ne t'écouterai plus raconter tavie, un col blanc veut pas dire que t'est un mec bien de pédophiles se cache derrièrel'eucaristie, la mort ne ment pas elle vois un truc qu'elle aime bien elle le prend..."),
                  makeFeet(userName:"Alida Tiwa",userImage:'assets/images/profil3.jpeg',feetTime:"Il y'a 45 minutes",feetText:"Arrose ta chance et vie, car nous somme tous des phoenix..",feetImage:'assets/images/profil4.jpeg'),
                  
                ],
              ),
              /**/
            ),),
        ],
      ),
  
    );
    
  }

  


   Text textCustom(String data, {color:Colors.white,fontWeight:FontWeight.normal,double size}){
        return new Text(
          data,
          style: TextStyle(
            color:color,
            fontWeight: fontWeight,
            fontSize: size,
          ),
        );
      }
    
         Widget makeNewStorie({userImage}){
           return AspectRatio(
             aspectRatio: 1.3/2,
             
             child: Container(
              
               margin: EdgeInsets.only(right:10,left: 10),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                   image: DecorationImage(image: AssetImage(userImage),fit:BoxFit.cover)
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(height: 1,),
                   textCustom("Céer une story",color:Colors.white,size:15,fontWeight: FontWeight.bold),
                   Container(
                     height: 38,
                     width: 38,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100),
                       border: Border.all(color: Colors.white,width: 2)
                     ),
                     child: FloatingActionButton(
                       elevation: 11,
                       
                       backgroundColor: Colors.blue,
                       child: new Icon(Icons.add,size: 30,color:Colors.white),
                       onPressed: (){},

                       ),
                   ),

                   
                 ],
               ),
             ),
             );
         }

      Widget makeStorie({storyImage,userImage,userName}){
      
        return AspectRatio(//retourne des element sous forme de container deja dimentionner
          aspectRatio: 1.5/2,
          child: Container(
            margin: EdgeInsets.only(right:10),
            decoration:BoxDecoration(
              color:Colors.grey,
              borderRadius:BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(storyImage),
                fit: BoxFit.cover
                
                ),
              
            ),
            child: Container(
             padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.2)
                  ]
                )
                
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   width: 40,
                   height: 40,
                     padding: EdgeInsets.all(2),
                   decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(100),
                     
                     borderRadius: BorderRadius.circular(100),
                     border: Border.all(color:Colors.blueAccent,width: 1.8),  //??

                   ),
                   child: Container(
                     
                     decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(100),
                     image: DecorationImage(image: AssetImage(userImage),fit: BoxFit.cover),
                     shape: BoxShape.circle,
                    
                   ),
                   ),
                 ),
                 textCustom(userName,color: Colors.white)
               ],
              ),
            )
          ),
          );
      }
      
      Widget makeFeet({userName,userImage,feetTime,feetText,feetImage}){
         
        return Card(
          elevation:11,
          
          child:new Container(
           width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.all(10),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle, 
                   image: DecorationImage(
                     image: AssetImage(userImage),
                     fit:BoxFit.cover,
                     ),

                   ),
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   textCustom(userName,color: Colors.grey[900],fontWeight: FontWeight.bold,size: 18),
                   textCustom(feetTime,color: Colors.grey[500]),
                 ],
               ),
               SizedBox(width:100),
      IconButton( icon: Icon(Icons.more_horiz, size:30, color: Colors.grey[500], ),
        onPressed: (){}),
             ],
           ),
           SizedBox(height: 20,),
           textCustom(feetText,color:Colors.grey[800],size:18),
            SizedBox(height: 20,),
          Card(
             
             elevation:(feetImage!=null)? 14:0,
             shadowColor: Colors.grey[900],
             child: Container(
             height: (feetImage!=null)?230:0,
             width: MediaQuery.of(context).size.width,
             decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                image: DecorationImage(
                image: AssetImage((feetImage!=null)?feetImage:''),
                fit: BoxFit.cover
                ),
             ),
           ),
           ),
           SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 
                 children: [
                    makeLike(),
                    Transform.translate(offset: Offset(-4, 0),
                    child:  makeLove()),
                    SizedBox(width: 5,),
                    textCustom(countLike.toString(),color:Colors.grey[800],size:15)

                 ],
               ),
                textCustom('270 commentaires',color:Colors.grey[800],size:15),
             
             ],
           ),
              SizedBox(height:20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 makeLikeButton(),
                  makeComentButton(),
                  makeShareButton(),
                  
              ], 
             ),
              SizedBox(height:15),
              commentaire()
              
               
             ],
           ),
        )
        );

      }

      Widget commentaire(){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 40,
              width:40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color:Colors.white),
                image: DecorationImage(
                  image: AssetImage("assets/images/story/avatar.jpg"),
                  fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
           child: Container(
             padding: EdgeInsets.only(left:5),
              height: 36,
          decoration:  BoxDecoration(
            color:Colors.grey[300],
            borderRadius: BorderRadius.circular(40),),
            child:TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Ecrivez un commentaire...",
                hintStyle: TextStyle(color: Colors.grey[400],fontSize: 15,fontStyle: FontStyle.italic),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.local_see,color: Colors.grey[400],),
             
                

              )
            ),
               
          ),
        ),
        ],
        );

      }

      Widget makeLike(){
        return new Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
            border: Border.all(color:Colors.white),
          ),
          child: new Center(
            child: new Icon(Icons.thumb_up,size: 12,color: Colors.white,),
        ),);
      }

      Widget makeLove(){
         return new Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            border: Border.all(color:Colors.white),
          ),
          child: new Center(
            child: new Icon(Icons.favorite,size: 12,color: Colors.white,),
        ),);
      }
     
     bool like=false;
     int countLike=400;//conter les like
      Widget makeLikeButton(){
        return new InkWell(
          child:  Container (
          // color: Colors.blueAccent,
           padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
          child:Row(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Icon(Icons.thumb_up,size: 17,color:(like)?Colors.blueAccent: Colors.grey[700],),
             SizedBox(width:3),
             textCustom("J'aime",size:17,color:(like)?Colors.blueAccent:Colors.grey[700],),
           ],
          ) ,
          ),
          onTap: (){
            setState(() {
              like=!like;
              countLike++;
              
            });
          },
        );
             
            
          
      }
      // 
             

      Widget makeComentButton(){
return new InkWell(
          child:  Container (
          // color: Colors.blueAccent,
           padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
          child:Row(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Icon(Icons.comment,size: 17,color:Colors.grey[700],),
             SizedBox(width:3),
             textCustom("Commenter",size:17,color:Colors.grey[700],),
           ],
          ) ,
          ),
         
        );

      }

      Widget makeShareButton(){
        return new InkWell(
          child:  Container (
          // color: Colors.blueAccent,
           padding: EdgeInsets.symmetric(horizontal:10,vertical:5),
          child:Row(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Icon(Icons.share,size: 17,color:Colors.grey[700],),
             SizedBox(width:3),
             textCustom("Partager",size:17,color:Colors.grey[700],),
           ],
          ) ,
         
          ),
          
        );
      }

}



