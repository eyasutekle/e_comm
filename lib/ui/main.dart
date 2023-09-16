import 'package:e_comm/ui/home.dart';
import 'package:flutter/material.dart';
import 'catagory_list.dart';
import 'house_details.dart';
import 'setting.dart';
import 'search.dart';
import 'my_drawer.dart';
void main() {
  runApp(const MyApp());
}




class MainWidget extends StatefulWidget {

  const MainWidget({Key?key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();

}

class _MainWidgetState  extends State<MainWidget>{

  int _selectedIndex = 0;
 PageController pagecontroller= PageController();

 void onTapped(int index){

   setState(() {
     _selectedIndex= index;
   });

   pagecontroller.jumpToPage(index);
 }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text("My Cool App"),
        actions: _selectedIndex==0  ? ([
          IconButton(onPressed: (){
            showSearch(
              context:context,
              delegate: Mysearch(),
            );
          }, icon: const Icon(Icons.search))
        ]):null,
      ),
      body: PageView(
        controller: pagecontroller,
        children: [
          Home(),
          CatagoryList(),
          HouseDetails(5),
          Setting(),
        ],
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',

          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 22),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex, //New
        onTap: onTapped,
      ),
    );
  }


}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
        routes: {
        '/': (BuildContext ctx) => MainWidget(),
          '/setting': (BuildContext ctx)=> Setting(),
        },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple)
    );
  }
}
