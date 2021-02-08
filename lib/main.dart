import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title:"Animal",
      home:appLayout(),
    )
  );
}

class appLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return appLayoutState();
  }

}

class appLayoutState extends State<appLayout>{
  int currentIndex;int num=1;
  Color c=Color.fromRGBO(12, 51, 14,10);
  Color t=Color.fromRGBO(12, 51, 14,10);
  Color a=Colors.white;
  void changeColor(){
    setState(() {
      a=Color.fromRGBO(12, 51, 14,10);
      t=Colors.white;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      drawer:SafeArea( child:drawer()),



    );
  }
  Widget body(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                search(),
                buttonsList(),

              ],
            ),
          ),
          method(),

        ],
      ),
    );
  }
  Widget method(){
    switch(num){
      case 1:return animalList();
      break;
      case 2:return birdList();
      break;
      case 3:return fishList();
      break;
      default:return treeList();
    }
  }
  Widget animalList(){
    return Container(
      child: Column(
        children: [
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
          list("images/dog.png","Dog","50 \$ \n it is rare kind \n in the world"),
        ],
      ),
    );
  }
  Widget fishList(){
    return Container(
      child: Column(
        children: [
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),
          list("images/sardine.png","sardine","50 \$ \n it is rare kind \n in the world"),

        ],
      ),
    );
  }
  Widget birdList(){
    return Container(
      child: Column(
        children: [
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
          list("images/dove.png","Dove","50 \$ \n it is rare kind \n in the world"),
        ],
      ),
    );
  }
  Widget treeList(){
    return Container(
      child: Column(
        children: [
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
          list("images/plants.png","Tree","50 \$ \n it is rare kind \n in the world"),
        ],
      ),
    );
  }
  Widget list(String img,String name,String cont){
    return Container(
      margin: EdgeInsets.all(20),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: c,
        boxShadow: [
          BoxShadow(
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border:Border.fromBorderSide(BorderSide(color: c,width: 5,style: BorderStyle.solid,)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child:Image.asset(img,cacheWidth: 300,cacheHeight: 250,),
          ),
          SizedBox(width: 20,),
          Column(
            children: [

              Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
              SizedBox(height: 20,),
              Text(cont,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),

            ],
          ),

        ],
      ),
    )
    ;
  }
  Widget buttonsList(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buttons("ANIMAL", "images/camel.png"),
          buttons("BIRD", "images/canary.png"),
          buttons("FISH", "images/salamon.png"),
          buttons("TREE", "images/plant.png"),

        ],

      ),
    );
  }
  Widget search(){
    return TextField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.search,size: 30,color: c,),
          hintText: "Search",
          labelText: "Search",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
              color: c,
              width: 5,
              style: BorderStyle.solid,
            ),

          ),

          focusedBorder: OutlineInputBorder(

            borderSide: BorderSide(
              color: c,
              width: 5,
              style: BorderStyle.solid,
            ),

          )
      ),
    );
  }
  Widget buttons(String name,String img){

    return FlatButton(

      onPressed: (){
        if(name=="ANIMAL"){
          num=1;
        }else if(name=="BIRD"){
          num=2;
        }else if(name=="FISH"){
          num=3;
        }else{
          num=4;
        }
        changeColor();


      },
      child: Center(
        child: Container(

            margin: EdgeInsets.only(top:20,right:1),
            child:ClipRRect(

              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(

                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  color: a,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border:Border.fromBorderSide(BorderSide(color: c,width: 5,style: BorderStyle.solid)),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(alignment:Alignment.center,child: Image.asset(img,)),
                    Positioned(
                        bottom: 5,
                        left: 40,
                        child: Text(name,style: TextStyle(color: t,fontWeight: FontWeight.bold,fontSize: 20),)
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );

  }
  AppBar appBar(){
    return AppBar(
      backgroundColor: Color.fromRGBO(12, 51, 14,10),
      leading: leading(),
      title: Container(
        child: Text("Animal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
        alignment: Alignment.center,
      ),
      elevation: 20,
      toolbarHeight: 80,
      titleSpacing: 20,
    );
  }
  Widget leading(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu,size: 40,),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
    );
  }
  Widget drawer(){
    return Drawer(
      child: Container(
        color: c,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            DrawerHeader(
              child: Container(

                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                      "images/wild.png",
                    ),
                  )),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
              child: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'About',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Log Out',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'v1.0.1',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          color: c,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

}





