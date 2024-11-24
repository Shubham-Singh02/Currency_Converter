import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=>
    _CurrencyConverterMaterialPageState();
  }


class _CurrencyConverterMaterialPageState
  extends State<CurrencyConverterMaterialPage>{
    double result=0;
    final TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {

  final border1 = OutlineInputBorder(
              borderSide: BorderSide(
                 color: Color.fromARGB(255, 255, 255, 255),
                 width: 2.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(60)),
            );

     return Container(

      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("assets/designback2.jpg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        )
      ),
       child: Scaffold(
        backgroundColor: Colors.transparent,
       
        //AppBar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 162, 0),
          title: const Text(
            'Currency Converter',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          centerTitle: true,
        ),
       
       
       body: Center(
        child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
            Text(
            'INR $result',
            style: const TextStyle(
             fontSize: 45,
             fontWeight: FontWeight.bold,
             color: Color.fromARGB(255, 255, 255, 255)
           ),
           ),
           Padding(
             padding: const EdgeInsets.all(10),
             child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              decoration: InputDecoration(
                hintText: 'Please Enter the amount in USD',
                hintStyle:const TextStyle(
                   color: Colors.grey,
                ),
                prefixIcon:const Icon(Icons.monetization_on),
                prefixIconColor: Colors.white,
                filled: true,
                fillColor: Color.fromARGB(109, 0, 0, 0),
                focusedBorder: border1,
                enabledBorder: border1,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
             ),
           ),
       
           Padding(
             padding: const EdgeInsets.all(10),
             child: ElevatedButton(onPressed: (
             ){
             result=double.parse(textEditingController.text)*84.44;
             setState(() {
               
             });
             }, 
             style: ElevatedButton.styleFrom(
               backgroundColor: const Color.fromARGB(255, 255, 162, 0),
              minimumSize: 
                const Size(double.infinity, 50),
             ),
             child: const Text(
              'Convert',
              style: TextStyle(
                color: Colors.white, 
              ),
             
             ),
             ),
           )
         ],
       ),
       ),
          ),
     );
  }
}