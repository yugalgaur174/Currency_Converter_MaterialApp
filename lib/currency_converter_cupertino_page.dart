import 'package:flutter/cupertino.dart';
//stfl a shortcut
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _MyWidCurrencyConverterCupertinoPage();
}

class _MyWidCurrencyConverterCupertinoPage extends State<CurrencyConverterCupertinoPage> {
  double result=0;
  
  final TextEditingController textEditingController= TextEditingController();

  void convert(){
    setState(() {
                result=double.parse(textEditingController.text)*81;
                  
                });
  }
  @override
  Widget build(BuildContext context) {
    

    return CupertinoPageScaffold(
      // backgroundColor: Color.fromARGB(0, 0, 0, 1),
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar:const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text('Currency Converter by Yugal'),
        // actions: [Text('Hello!!')],
      ),
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                onSubmitted: (value){
                  print(value);
                },
                style: const TextStyle(
                  color: CupertinoColors.black
                ),
                decoration: BoxDecoration(
                  border:Border.all(),
                  borderRadius:BorderRadius.circular(5) ,
                  color: CupertinoColors.white,
                ),
                placeholder: "Please enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
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
              child: CupertinoButton(onPressed: convert,
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
                
                color: CupertinoColors.black,
              
              child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}