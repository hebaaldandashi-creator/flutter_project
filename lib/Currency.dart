import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  final TextEditingController num1 = TextEditingController();

  String? curr1 = "Choose a Currency";
  String? curr2 = "Choose a Currency";

  double? result = 0;

  final Map<String, Map<String, double>> currencies = {
    //LBP -> conversion
    'LBP': {'USD': 0.000011, 'KWD': 0.0000034},
    //USD -> conversion
    'USD': {'LBP': 90909, 'KWD': 0.31},
    //KWD -> conversion
    'KWD': {'LBP': 291407.55, 'USD': 3.26},
  };

  void change() {
    //build runs everytime setstate is called
    setState(() {
      double? rate = currencies[curr1]?[curr2];

      if (rate !=
          null) //convert only if the user has selected a currency (if curr2!=null then rate!=null)
        result = (double.tryParse(num1.text) ?? 1) * (rate);

      print('$result');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      appBar: AppBar(
        title: Text(
          "Currency Converter",
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
                  DropdownButton<String>(
                    hint: Text("$curr1"),
                    items: [
                      DropdownMenuItem(value: "LBP", child: Text("LBP")),
                      DropdownMenuItem(value: "USD", child: Text("USD")),
                      DropdownMenuItem(value: "KWD", child: Text("KWD")),

                      // for many dorpdownmenuItems use .map
                    ],
                    onChanged: (newvalue) => {
                      setState(() {
                        curr1 = newvalue;
                      }),
                    },
                  ),
                  SizedBox(
                    height: 70,
                    width: 190,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter a number to convert. . .",
                      ),
                      keyboardType: TextInputType.number,
                      controller: num1,
                      style: TextStyle(
                        backgroundColor: Colors.deepPurpleAccent[50],
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    hint: Text("$curr2"),
                    items: [
                      DropdownMenuItem(value: "LBP", child: Text("LBP")),
                      DropdownMenuItem(value: "USD", child: Text("USD")),
                      DropdownMenuItem(value: "KWD", child: Text("KWD")),
                    ],
                    onChanged: (newvalue) => {
                      setState(() {
                        curr2 = newvalue;
                      }),
                    },
                  ),

                  ElevatedButton(
                    onPressed: change,
                    style: ButtonStyle(),
                   child: Text("convert"),
                  ),

                  SizedBox(
                    height: 70,

                    child: Text(
                      " $result",
                      style: TextStyle(
                        backgroundColor: const Color.fromARGB(255, 250, 249, 248),

                      ),
                    ),
                  ),
                ],
              
            
          ),
        ),
      ),
    );
  }
}
