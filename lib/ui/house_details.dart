
import 'package:flutter/material.dart';
import 'home_details.dart';


class HouseDetails extends StatefulWidget {

  int items;
  HouseDetails(this.items,{Key? key}) : super(key: key);


  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text(
          "widget.items.prod_name!",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {

              },
              // onTap: (() {
              //   Navigator.of(context).push(
              //     PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) =>
              //     HeroWidgetDetails(item: widget.items),
              //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
              //       return child;
              //     },
              //     )
              //   );
              // }),
              // child: Hero(
              //   transitionOnUserGestures: true,
              //   tag: widget.items,
              child: Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(

                   image: NetworkImage('https://i.imgflip.com/30b1gx.jpg',),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              // ),
            ),
            // CustomAppBar(),
            SizedBox(height: 30,),
           HomeDetails(widget.items),
            // SizedBox(height: 30,),
          ],

        ),
      ),
    );
  }
}
class HeroWidgetDetails extends StatefulWidget {
  // const HeroWidgetDetails({super.key});
  final int item;
  const HeroWidgetDetails({Key?key , required this.item,}):super(key: key);
  @override
  State<HeroWidgetDetails> createState() => _HeroWidgetDetailsState();
}

class _HeroWidgetDetailsState extends State<HeroWidgetDetails> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Malefiya"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: Colors.orangeAccent,),
            onPressed: () {

            },
          ),
        ],
      ),
      body: InkWell(
        child: Hero(
            transitionOnUserGestures: true,
            tag: widget.item,
            child: BuildImage()),
        // onTap: openGallary,
      ),
    ) ;

  }
  // void openGallary()=> Navigator.of(context).push(MaterialPageRoute(
  //   builder: (_)=> GalleryWidget(

  //   )));
  Widget BuildImage() => AspectRatio(
    aspectRatio: 0.9,
    child: Image.asset('assets/images/bird.png',fit: BoxFit.cover),
    /*child: Image.network("https://appdata.malefiyabrokers.com/public/images/${widget.item.prod_image}",
      fit: BoxFit.cover,*/

  );
}

// class HeroWidgetDetails extends StatelessWidget{
//   final HouseModel item;
//   const HeroWidgetDetails({Key?key , required this.item,}):super(key: key);
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Malefiya"),
//         centerTitle: true,
//         actions: [
//           IconButton(
//           icon: Icon(Icons.search,color: Colors.orangeAccent,),
//           onPressed: () {
//            showSearch(context: context, delegate: SearchHouse());
//            },
//          ),
//           ],
//           ),
//       body: InkWell(
//         child: Hero(
//           transitionOnUserGestures: true,
//           tag: item,
//           child: BuildImage()),
//           onTap: openGallary,
//       ),
//     ) ;

//   }

//   Widget BuildImage() => AspectRatio(
//     aspectRatio: 0.9,
//     child: Image.network(item.prod_image!,
//     fit: BoxFit.cover,
//     ),
//     );
// }