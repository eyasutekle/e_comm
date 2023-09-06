import 'package:flutter/material.dart';
import 'package:e_comm/model/catagory.dart';
import 'package:e_comm/model/news.dart';
class CatagoryList extends StatelessWidget {
  const CatagoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: <Widget>[

          GridView.extent(
            physics: const NeverScrollableScrollPhysics(),
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
          SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height:300,
              child: Column(


                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("አዲስ ዜናዎች እና ሁፎች",
                              style: TextStyle(fontSize: 25)),
                          Text("ሁሉንም ይመልከቱ", style: TextStyle(fontSize: 20)),
                        ]
                    ),
                    Expanded(child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: news_list.map((catagory) =>
    Card(
    elevation: 20,
    child: Column(
    children: [
    Image.asset('assets/images/bird.png'),
      Padding(padding: EdgeInsets.only(top:10),
        child: Text(catagory['title'].toString(), style: TextStyle(fontSize: 20))),

    Text(catagory['desc'].toString()),
      Padding(padding: EdgeInsets.only(top:5),

      child:const Text("read more", textAlign: TextAlign.right)),

    ]),


    )

    ).toList(),


                  ))


        ],
      ),
    )]
    ));
  }
}
