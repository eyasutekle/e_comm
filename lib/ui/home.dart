import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_comm/model/catagory.dart';
class Home extends StatefulWidget {

  const Home({Key?key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home>{
  double _value = 50;
  String?  dropdownsubvalue;
  String?  dropdowntypevalue;




  @override
  Widget build(BuildContext context) {
    List<bool> purchaseType = [false, false, false];

    List<String> subcity= ["Lideta", "Bole", "Yeka", "Gulele","Lafto"];
    // Initial Selected Value
    List<DropdownMenuItem<String>> _list(){

      return   catagories.map<DropdownMenuItem<String>>((e)=>
          DropdownMenuItem(
              child:Text(e['name'].toString()),
              value:e['name'].toString(),
          ),
      ).toList();
    }

    // List of items in our dropdown menu
    /*var items = catagories.map((catagory) =>(
                catagory['name'].toString()
    ));*/



    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
    child: Column(
        children:[

        Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,

        child: DropdownButton(
            hint: Text("Choose Your Subcity"),

      // Initial Value
      value: dropdownsubvalue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items:  subcity.map((String items) {
    return DropdownMenuItem(
    value: items,
    child: Text(items),
    );
    }).toList(),
    // After selecting the desired option,it will
    // change button value to selected value
    onChanged: (String? newValue) {
    setState(()=>dropdownsubvalue = newValue??"");
    }
    ),
          ),


          SizedBox(width: 40),
        Flexible(
            flex: 1,
            child: DropdownButton(
                hint: Text("Choose Your House"),
            // Initial Value
             value: dropdowntypevalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items:  _list(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(()=> dropdowntypevalue = newValue?? "");
              }
          ),


        )
    ],
    ),
          Row(
          children:[
            Flexible(
                flex: 3,
                fit: FlexFit.tight,
            child: Slider(
            min: 0.0,
            max: 100.0,
            value: _value,
            label: "$_value",
            divisions: 10,

            onChanged: (value) {
              setState(() {
                _value = value;
               });
    },
              )),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
             child: TextButton(
              onPressed: () {},
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Text(
                  'Filter',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            )),


]
    ),
]
    ));

  }
}