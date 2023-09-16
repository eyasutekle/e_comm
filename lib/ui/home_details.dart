

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';


class HomeDetails extends StatefulWidget {
  HomeDetails(this.items,{Key? key}) : super(key: key);
  int items;
  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
// String Datasource="https://appdata.malefiyabrokers.com/public/video/${widget.items.prod_video}";

  bool fullScreen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // const url = ;

  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '(${"widget.items.prod_price"})\ birr',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "widget.items.location!",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent,
                    onPrimary: Colors.black,
                  ),

                  child: Row(
                    children: [
                      const Icon(Icons.call_rounded, color: Colors.black,),
                      const SizedBox(width: 10,),
                      const Text("Call",style: TextStyle(
                        fontSize: 18,
                      ),),
                    ],
                  ),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
          const Padding(
            padding:
            EdgeInsets.only(left: 30, bottom: 30),
            child: Text(
              'House information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 30,
                  ),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.black.withOpacity(0.4),
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Icon(Icons.house_sharp,color: Colors.orangeAccent,size: 45,),
                            const SizedBox(width: 20,),
                            Row(
                              children: [
                                Text(
                                  // widget.house.bedRooms.toString(),
                                  "widget.items.Area.toString()",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Sq M',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 30,
                  ),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.black.withOpacity(0.4),
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Icon(Icons.bedroom_parent,color: Colors.orangeAccent,size: 40,),
                            const SizedBox(width: 20,),
                            Row(
                              children: [
                                Text(
                                  // widget.house.bedRooms.toString(),
                                  "widget.items.Bed_room.toString()",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'BedRoom',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 30,
                  ),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.black.withOpacity(0.4),
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Icon(Icons.bathroom,color: Colors.orangeAccent,size: 40,),
                            const SizedBox(width: 20,),
                            Row(
                              children: [
                                Text(
                                  // widget.house.bedRooms.toString(),
                                  "widget.items.bath_room.toString()",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'BathRoom',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 30,
                  ),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.black.withOpacity(0.4),
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Icon(Icons.garage,color: Colors.orangeAccent,size: 40,),
                            const SizedBox(width: 20,),
                            Row(
                              children: [
                                Text(
                                  // widget.house.bedRooms.toString(),
                                  "widget.items.Bed_room.toString()",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Garage',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30 * 4,
            ),
            child: Text(
              // widget.house.description,
              "widget.items.prod_description!",
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                height: 1.5,
              ),
            ),

          ),
          const Padding(
            padding:
            EdgeInsets.only(left: 30, bottom: 30),
            child: Text(
              'House Video',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          //_chewieVideoPlayer(),
          // VideoApp(),
          //  VideoPage(widget.items),
          //  Chewie(
          // controller:_chewiecontroller!,
          // ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30 * 4,
            ),
            // // VideoApp();
            // child: Chewie(
            // controller:_chewiecontroller!,
            // ),
            // child: _chewieVideoPlayer()

          )
        ],
      ),
    );
  }
  //   @override
  // void dispose() {
  //       super.dispose();
  //   _videoPlayerController!.dispose();
  //   _chewiecontroller!.dispose();

  // }
  Widget _chewieVideoPlayer(){
    return Container(
      child: Text("Hello"),
    );

  }
// return Container(
//   height: (MediaQuery.of(context).size.width)/16*9,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(20.0),
//     color: Colors.white,
//   ),
//   // height: 200,
//   // width: double.infinity,
//   // alignment: Alignment.topRight,
//   child: Chewie(
//     controller: _chewiecontroller!),
//   // child: VideoPlayer(_videoPlayerController!)
//   // child: AspectRatio(
//   //   // aspectRatio: _videoPlayerController?.value.aspectRatio,
//   //   child: VideoPlayer(_videoPlayerController!)
//   //
//   );
// )
// ):
// Container(
//   child: CircularProgressIndicator(),
// ) ;
}


