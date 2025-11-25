import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  icon: Icon(Icons.currency_exchange,color: Colors.indigoAccent,),
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
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      appBar: AppBar(
        
           leading:
           Row( 
             children: [
              IconButton( icon: Icon(Icons.swap_horiz,color: Colors.indigoAccent,),
            onPressed: () => {context.go('/')},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 0, 0, 0)),
            
            )),
            Text(
          
          "Unit Converter",
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
             ],
           ),
                  
       
        centerTitle: true,
        shadowColor: const Color.fromARGB(255, 131, 138, 145),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 70,
              children: [
                SizedBox(
                  width: 350,
                  height: 60,
                  child: TextButton(
                    onPressed: () => {context.go('/page1')},
                    child: Text("Cuurency", style: TextStyle(color: const Color.fromARGB(255, 250, 248, 250)),),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.indigoAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 55,
                  child: TextButton(
                    onPressed: () => {context.go('/page2')},
                    child: Text("Length",style: TextStyle(color: const Color.fromARGB(255, 250, 248, 250)),),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.indigoAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextButton(
                    onPressed: () => {context.go('/page3')},
                    child: Text("Time",style: TextStyle(color: const Color.fromARGB(255, 250, 248, 250)),),
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.indigoAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
