import 'package:flutter/material.dart';

import 'package:mycard_app/counterpoint.dart';
import 'package:provider/provider.dart';

void main (){
  runApp(pointsCounter());
}
class pointsCounter extends StatefulWidget {
  pointsCounter({super.key});

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> Counterpoint() , 
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
          centerTitle: true,
        ),
        body: 
      
            Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                
                 Consumer<Counterpoint>(builder: (context , value , child)=>columnTeamA(
                   "Team A", 
                  "${value.teamAPoints}",
                  () {value.AddonePointA();},
                  (){value.AddtwoPointsA();}, 
                  (){value.AddthreePointsA();} , 
                  "Add 1 Point" ,
                  "Add 2 Points" ,
                  "Add 3 Points" ,
                  ) ,) ,
                 
                    Container(
                      height: 500,
                      child: VerticalDivider(
                      color: Colors.grey,
                       thickness: 1,
                       indent: 50,
                       endIndent: 50,
                                        
                                      
                      ),
                    ), 
                    Consumer<Counterpoint>(builder: (context , value , child)=>columnTeamA(
                      "Team B",
                    "${value.teamBPoints}",
                     (){
                      value.AddonePointB();
                    },
                     (){
                         value.AddtwoPointsB();
                     },
                     (){   value.AddthreePointsB();},
                      "Add 1 Point", 
                      "Add 2 Points",
                       "Add 3 Points") , )

                    
                    
                  ],
                ) , 
                
               Consumer<Counterpoint>(builder: (context , value , child)=>
                MaterialButton(
                  color: Colors.orange,
                  onPressed: (){
value.ResetteamAB();
                  } ,
                child: Text("Reset" , 
                style: TextStyle(
                  fontSize: 21, 
                  fontWeight: FontWeight.bold, 
                ),),
                ),
               )
               
                ], 
                 ) , 
                 ), 
                 ));
               
                          
  }

  
  Widget columnTeamA(String text , String number , VoidCallback functionone , 
                     VoidCallback functiontwo,  VoidCallback functionthree , 
                     String buttontextone , String buttontexttwo , String buttontextthree ,
                    ) =>Column(
              
                    children: [
                    Text(text, style: TextStyle(
                      fontSize: 40 , 
                      fontWeight: FontWeight.bold , 
                      color: Colors.black
                    ),) ,

                    Text("$number", 
                     style: TextStyle(
                      fontSize: 100 , 
                      fontWeight: FontWeight.bold , 
                      color: Colors.black
                    ),) , 
                     MaterialButton(
                color: Colors.orange,
                onPressed: (){
             
                    functionone();
            
                } , 
              child: Text(buttontextone, 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),),
              
               MaterialButton(
                color: Colors.orange,
                onPressed: (){
                
                      functiontwo();
                
                } , 
              child: Text(buttontexttwo, style: TextStyle(
                fontWeight: FontWeight.bold
              ),),),
               MaterialButton(
                color: Colors.orange,
                onPressed: (){  
                 functionthree();
                    //teamapoint+=3;
                } , 
              child: Text(buttontextthree,  style: TextStyle(
                fontWeight: FontWeight.bold
              ),),) , 
                    
                 
                     
                    ],
                  );
  }
