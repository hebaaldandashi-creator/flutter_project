import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Length extends StatefulWidget {
  const Length({super.key});

  @override
  State<Length> createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      appBar: AppBar(
        title: Text(
          "Length Converter",
          style: TextStyle(color: const Color.fromARGB(255, 245, 245, 248)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 18, 19),
      ),
      bottomNavigationBar: 
      SizedBox(
        height: 70,

        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.zero
          ),
          child:
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 40,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.indigoAccent,),
                onPressed: () => {context.go('/')},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 0, 0, 0)),
                
                )
                
                      ),

                 

                 IconButton( icon: Icon(Icons.currency_exchange,color: Colors.indigoAccent,),
                onPressed: () => {context.go('/page1')},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 0, 0, 0)),
                
                )
                
                      ),
                       IconButton(
                  icon: Icon(Icons.straighten_rounded,color: Colors.indigoAccent,),
                onPressed: () => {context.go('/page2')},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 0, 0, 0)),
                
                )
                
                      ),
                       IconButton(
                  icon: Icon(Icons.access_time_sharp,color: Colors.indigoAccent,),
                onPressed: () => {context.go('/page3')},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 0, 0, 0)),
                
                )
                
                                                          ),
              ],
              ),
          
        ),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,

              children: [
Text("Coming Soon . . .")


              ],

          ),
        ),
      ),
      
    );
  }
}