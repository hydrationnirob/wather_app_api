import 'package:flutter/material.dart';

Widget UpdateWeather(IconData icon, String temperature, String location) {
  return  Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 70,color: Colors.orange,),
        SizedBox(height: 20,),
        Text(temperature, style: TextStyle(fontSize: 40),),
        SizedBox(height: 10,),
        Text(location, style: TextStyle(fontSize: 20),),

      ]
    )
  );
}

Widget AdditonalInfo (String wide , String humanity, String realFeel, String pressure) {
  return  Container(
       width: double.infinity,
      padding: EdgeInsets.all(18),
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Wide", style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Text(wide, style: TextStyle(fontSize: 20),),
                ]
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Humidity", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text(humanity, style: TextStyle(fontSize: 20),),
                  ]
              ),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Real Feel", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text(realFeel, style: TextStyle(fontSize: 20),),
                  ]
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Real Feel", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text(realFeel, style: TextStyle(fontSize: 20),),
                  ]
              )




            ]


          ),




        ],
      )

  );
}