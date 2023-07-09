import 'package:flutter/material.dart';

Widget UpdateWeather(IconData icon, String temperature, String location) {
  return  Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 70,color: Colors.white,),
        const SizedBox(height: 20,),
        Text(temperature, style: const TextStyle(fontSize: 40,color: Colors.white),),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, size: 20,color: Colors.white,),
            const SizedBox(
              width: 10,
            ),

            Text(location, style: const TextStyle(fontSize: 20,color: Colors.white),),
          ]

        )


      ]
    )
  );
}

Widget AdditionalInfo (String wide , String humanity, String realFeel, String pressure) {
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Card(
      color: Colors.transparent,
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Wind Speed -> ${wide}", style: const TextStyle(fontSize: 20,color: Colors.white),),
              const Icon(Icons.wind_power, size: 20,color: Colors.white,),
            ]
          )
        ),
      )
    ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Humanity -> ${humanity}", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.hotel_outlined, size: 20,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Real Feel -> ${realFeel}", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.person_off, size: 20,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pressure -> ${pressure}", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.window, size: 25,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),


      ]
    ),
  );
}