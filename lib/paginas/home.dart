import 'package:flutter/material.dart';

class calculadoraimc extends StatefulWidget {
  const calculadoraimc({super.key});

  @override
  State<calculadoraimc> createState() => _calculadoraimcState();
}
class _calculadoraimcState extends State<calculadoraimc> {
  double weight = 0;
  double heigh = 0;
  double imc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Calculadora IMC"),
        centerTitle: true,
      ),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/logo.png'),
            width: 150,
            height: 200,
          ),
          SizedBox(
            width: 410,
            height: 70,
             child:TextField(
            autofocus: true,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                weight = double.tryParse(value) ?? 0;
              });
            },
            decoration: InputDecoration(
              labelText: "Peso (kg)",
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
            ),  
          ),
          ),
         SizedBox(
          width: 410,
          height: 70 ,
           child: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value){
              setState(() {
                heigh = double.tryParse(value) ?? 0;
              });
            },
            decoration: InputDecoration(
              labelText: "Altura (cm)",
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),
         ),
         
          ElevatedButton(onPressed: (){
            setState(() {
              imc = weight / ((heigh/100)*(heigh/100));
              
            });
          },
          child: Text("Calcular"),),
          SizedBox(height: 20),
          Text(
            "IMC:${imc.toStringAsFixed(2)}",
            style: TextStyle(color: Colors.white,fontSize: 25),
          ),
          Text(getIMCStatus(imc),
          style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    );
  }
  String getIMCStatus(double imc){
    if (imc<18.5) {
      return "Abaixo do Peso";
    }else if (imc < 24.9){
      return 'Peso Normal';
    }else if (imc<29.9){
      return "Sobrepeso";
    }else if(imc<34.9){
      return "Obsedidade Grau I";
    }else if(imc < 39.9){
      return "Obesidade Grau II";
    }else{
      return 'Obesidade Grau III';
    }
  }
}