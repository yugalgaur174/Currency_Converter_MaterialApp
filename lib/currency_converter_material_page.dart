
import 'package:flutter/material.dart';
// 1. Create a variable that stores the stores the converted currency values
// 2. Create a function that multiplies the value given by the texfield with value of inr
// 3. Store the value in the variable that we created
// 4. Display the variable 

class CurrencyConverterMaterialPage extends StatefulWidget{  //stateful has a constant constructor so we cant put const
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=>_CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage >{ // is stateless so we can put const double result  
  // double result=0;
  double result=0;
  
  final TextEditingController textEditingController= TextEditingController();

  void convert(){
    setState(() {
                result=double.parse(textEditingController.text)*81;
                  
                });
  }
  @override
  Widget build(BuildContext context){
    // return const Scaffold();
    print("rebuilted again");

    final border= OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 2.0,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignInside
                  ),
                  borderRadius: BorderRadius.circular(5), 
                );

    return Scaffold(
      // backgroundColor: Color.fromARGB(0, 0, 0, 1),
      backgroundColor: Color.fromARGB(255, 20, 204, 189),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text('Currency Converter by Yugal'),
        // actions: [Text('Hello!!')],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
              // padding: const EdgeInsets.all(10),
              // margin: const EdgeInsets.all(10),
              // color: Colors.black,
              // height: 300,
              // width: 200,
              // child: const Text(
              Text(
                
                'INR ${result!=0?result.toStringAsFixed(3): result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            // ),
            //padding
            //container widge

            Container( //or you can use padding in place of container
              // padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.all(10),
              // color: Colors.black,
              child: TextField(
                controller: textEditingController,
                onSubmitted: (value){
                  print(value);
                },
                style: const TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Color.fromARGB(153, 10, 10, 10),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 226, 26, 26),
                      width: 4.0,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside
                    ),
                    borderRadius: BorderRadius.circular(5), //as border radius isnt a constant return therefore we remove const from top heading and add to other consts
                    // borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    // borderRadius: BorderRadius.horizontal(
                    //   right: Radius.circular(60),
                    //   left: Radius.circular(40)
                    // )
                  ),
                  enabledBorder: border,
                  // label: Text("Please enter the amount in USD",
                  // style:TextStyle(
                  //   color: Colors.white
                  // )
                  // ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),

            //raised button
            //appears like a text button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: convert,
                //three modes: debug, release, profile
                // if(kDebugMode){
                //   print("Button is Pressed");
                // }
                // print(textEditingController.text);
                // print();
                // debugPrint("Button is Pressed");
                // build(context);
                // result=double.parse(textEditingController.text)*81;   can be inside setstate or out of set state but setstate is necessary

                // setState(() {
                // result=double.parse(textEditingController.text)*81;
                  
                // });
                
               
              style: ElevatedButton.styleFrom(
                elevation: (15),
                backgroundColor:(Color.fromARGB(255, 36, 35, 35)),
                foregroundColor: (Colors.white),
                minimumSize:const Size(double.infinity ,50),
                shape: (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))
              ), //or use the below method
              // style:  ButtonStyle(
              //   elevation: MaterialStatePropertyAll(15),
              //   backgroundColor:const  MaterialStatePropertyAll(Color.fromARGB(255, 36, 35, 35)),
              //   foregroundColor: MaterialStatePropertyAll(Colors.white),
              //   minimumSize: const MaterialStatePropertyAll(Size(double.infinity ,50)),
              //   textStyle: MaterialStatePropertyAll(
              //     TextStyle(
              //       color:Colors.white
              //       ),
              //   ),
              //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ))
              // ),
              child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});
//   // int result=0;  this will throw an error as we cant have any variable as Stateless widge will have only const


//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
