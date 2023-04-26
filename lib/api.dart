import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project1/Listview.dart';
import 'package:project1/apinum2.dart';
import 'Exchage.dart';


class bath extends StatefulWidget {
  const bath({super.key});

  @override
  State<bath> createState() => _bathState();
  
}

class _bathState extends State<bath> {

Apinumexchang _dataformapi = Apinumexchang(); 

  // initialize dataformapi to a default value

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExcenrate();
  }

  Future <Apinumexchang> getExcenrate()  async {

    var url =Uri.parse("https://api.exchangerate-api.com/v4/latest/THB");
    var respon = await http.get(url);
    _dataformapi=apinumexchangFromJson(respon.body); //json to dart obj
     return _dataformapi ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อัตราการแลกเปลี่ยน'),
      ),
      body:  FutureBuilder(
        future: getExcenrate(),
        builder:(BuildContext context, AsyncSnapshot<dynamic>  snapshot)  {
          if(snapshot.connectionState == ConnectionState.done){
            var result = snapshot.data;
            double amount = 10000;
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                    children: [
                      moneybox2("THB", amount , Colors.red , 100),
                      SizedBox(
                        height: 5,
                      ),
                      moneybox2("USD",amount*result.rates["USD"], Colors.black, 100),
                       SizedBox(
                        height: 5,
                      ),
                      moneybox2("EUR", amount*result.rates["EUR"], Colors.black, 100),
                         SizedBox(
                        height: 5,
                      ),
                      moneybox2("GBP", amount*result.rates["GBP"], Colors.black, 100),
                        SizedBox(
                        height: 5,
                      ),
                      moneybox2("CDF", amount*result.rates["CDF"], Colors.black, 100),


                    ],
               ),
             );
          }
          return LinearProgressIndicator();
      },)
    );
  }

}


