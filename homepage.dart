import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text ('Hiking trails'),
            centerTitle: true,
          backgroundColor: Colors.brown,
        actions: <Widget>[
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
            ),
                onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginState)
              )
                },
            child: Text('Click Login'),

          )
        ]
      ),
      body: CustomScrollView(

        slivers:[

          const SliverAppBar(

            title: Text('Hiking trails'),

                floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 10,
    ),
    SliverList(
    delegate: SliverChildBuilderDelegate(
    (context, index) => ListTile(title: Text('Trail #$index')),
    // Builds 1000 ListTiles
    childCount: 2000,
    ),
    ),



        ]

      )


    );
  }
}