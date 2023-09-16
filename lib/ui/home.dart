import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_comm/model/catagory.dart';
class Home extends StatefulWidget {

  const Home({Key?key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  double _value = 50;
  double _startValue=10000;
  double _endValue = 100000;
  String? dropdownsubvalue;
  String? dropdowntypevalue;


  @override
  Widget build(BuildContext context) {
    List<bool> purchaseType = [false, false, false];


    List<String> subcity = ["Lideta", "Bole", "Yeka", "Gulele", "Lafto"];
    // Initial Selected Value
    List<DropdownMenuItem<String>> _list() {
      return catagories.map<DropdownMenuItem<String>>((e) =>
          DropdownMenuItem(
            child: Text(e['name'].toString()),
            value: e['name'].toString(),
          ),
      ).toList();
    }

    // List of items in our dropdown menu
    /*var items = catagories.map((catagory) =>(
                catagory['name'].toString()
    ));*/

    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),

        child: Column(
            children: [
              Row(
           children:[
              Expanded(
                  child: DropdownButton(
                      isExpanded: true,
                      hint: Text("Choose Your Subcity"),

                      // Initial Value
                      value: dropdownsubvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: subcity.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() => dropdownsubvalue = newValue ?? "");
                      }
                  )),
             SizedBox(width: 20),
              Expanded(
                  child: DropdownButton(
                      isExpanded: true,
                      hint: Text("Choose Your House"),
                      // Initial Value
                      value: dropdowntypevalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: _list(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() => dropdowntypevalue = newValue ?? "");
                      }
                  )),
              Expanded(
                flex: 2,
                  child: RangeSlider(
                    min: 10000.0,
                    max: 100000.0,
                    divisions: 1000,
                    labels: RangeLabels(
                      _startValue.round().toString(),
                      _endValue.round().toString(),
                    ),
                    values: RangeValues(_startValue, _endValue),
                    onChanged: (values) {
                      setState(() {
                        _startValue = values.start;
                        _endValue = values.end;
                      });
                    },
                  ))
            ]
        ),
              ElevatedButton(
                onPressed: () {
                  // Perform an action when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 4,
                ),
                child: const Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text('Results', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Expanded(
                child: GridView.extent(

                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                maxCrossAxisExtent: 300,
                children: catagories.map((catagory) =>
                    Card(
                      elevation: 20,
                      child: Column(
                          children: [
                            Image.asset('assets/images/bird.png'),
                            Spacer(),
                            Text(catagory['name'].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(catagory['count'].toString() + " " +
                                "properties"),

                          ]),


                    )

                ).toList(),
              ),
              )
    ],

        ),

    );
  }

}