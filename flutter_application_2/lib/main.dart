import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

/* StatelessWidget: construye solo con configuraciones que se iniciaron desde el principio, 
por lo tanto, nunca cambiara 
 State
*/
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image:NetworkImage('https://biblioteca.acropolis.org/wp-content/uploads/2022/05/simbolismo-buho.jpg')
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.star, color: Color.fromARGB(255, 248, 190, 0),size: 30.0,),
                  Text('41'),

                 /* Text('Kandersteg, Swizerland',
                  style: TextStyle(fontWeight: FontWeight.bold),),*/
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.phone, color: Colors.blue,size: 40.0,),
                Icon(Icons.send, color: Colors.blue, size: 40.0),
                Icon(Icons.share ,color: Colors.blue,size: 40.0,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text('CALL', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                Text('ROUTE', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                Text('SHARE', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                ],
              ),
              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum')
            ],
          ),
        ),
      ),
    );
  }
}
