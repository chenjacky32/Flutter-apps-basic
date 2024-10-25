import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listwisatabandung/second_page.dart';
import 'package:listwisatabandung/model/tourism_place.dart';
import 'package:listwisatabandung/DetailMobilePage.dart';
import 'package:listwisatabandung/DetailWebPage.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage(place: place);
      } else {
        return DetailMobilePage(place: place);
      }
    });
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

//
//
// //
// // /*Variabel fonts*/
// // var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
// //
// // class DetailScreen extends StatefulWidget {
// //   final TourismPlace place;
// //
// //   const DetailScreen({Key? key, required this.place }) : super(key: key);
// //
// //   @override
// //   S_DetailScreenState createState() => _DetailScreenState();
// //   // State<DetailScreen> createState() => _DetailScreenState();
// // }
// //
// // class _DetailScreenState extends State<DetailScreen> {
// //   // const DetailScreen({Key ? key}) : super(key: key);
// //   String _name = '';
// //   String? language;
// //   final String message = 'Hello from first page';
// //
// //   /* contoh Switch */
// //   bool isLightOpen = false;
// //
// //   /*contoh controller*/
// //   TextEditingController _controller = TextEditingController();
// //
// //   /*contoh radio */
// //   String? lang;
// //
// //   /*contoh checkbox*/
// //   bool agree = false;
// //
// //   /* contoh menampilkan item di listview secara dinamis*/
// //   final List<int> items = const <int>[
// //     1,
// //     2,
// //     3,
// //     4,
// //     5,
// //     6,
// //     7,
// //     8,
// //     9,
// //     10,
// //     11,
// //     12,
// //     13,
// //     14,
// //     15,
// //     16,
// //     17
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     /*contoh function handler radio button*/
// //     void showSnackbar() {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Text('$language selected'),
// //           duration: Duration(seconds: 1),
// //         ),
// //       );
// //     }
// //
// //     return Scaffold(
// //       backgroundColor: Colors.black,
// //         body: SafeArea(
// //             child: SingleChildScrollView(
// //                 child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.stretch,
// //                   children: <Widget>[
// //                     Image.asset(widget.place.imageAsset),
// //                        Container(
// //                           margin: EdgeInsets.only(top: 16.0),
// //                             child: const Text(
// //                               widget.place.name,
// //                             textAlign: TextAlign.center,
// //                             style: TextStyle(
// //                             fontFamily: 'Staatliches',
// //                             fontSize: 30.0,
// //                             fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                         Container(
// //                             margin: const EdgeInsets.symmetric(vertical: 16.0),
// //                             child: Row(
// //                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                               children: <Widget>[
// //                                 Column(children: <Widget>[
// //                                   Icon(Icons.calendar_today),
// //                                   SizedBox(
// //                                     height: 8.0,
// //                                   ),
// //                                     Text(
// //                                       widget.place.openDays,
// //                                       style: informationTextStyle,
// //                                     ),
// //                                   ]),
// //                                 Column(children: <Widget>[
// //                                   Icon(Icons.access_time),
// //                                   SizedBox(
// //                                     height: 8.0,
// //                                   ),
// //                                   Text(
// //                                    widget.place.openTime,
// //                                     style: informationTextStyle,
// //                                   ),
// //                                 ]),
// //                                 Column(
// //                                     children: <Widget>[
// //                                       Icon(Icons.monetization_on),
// //                                       SizedBox(
// //                                         height: 8.0,
// //                                       ),
// //                                   Text(
// //                                     widget.place.ticketPrice,
// //                                     style: informationTextStyle,
// //                                   ),
// //                                 ]),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 Container(
// //                                     padding: const EdgeInsets.all(16.0),
// //                                     child: const Text(
// //                                         widget.place.description,
// //                                         textAlign: TextAlign.justify,
// //                                         style: TextStyle(fontSize: 16.0,
// //                                         fontFamily: 'Oxygen',
// //                                       ),
// //                                     )),
// //                                 SizedBox(
// //                                   height: 150,
// //                                   child: ListView(
// //                                     scrollDirection: Axis.horizontal,
// //                                     children: <Widget>[
// //                                       Padding(
// //                                         padding: const EdgeInsets.all(4.0),
// //                                         child: ClipRRect(
// //                                             borderRadius: BorderRadius.circular(15.0),
// //                                             child: Image.network(url),
// //                                         ),
// //                                       ),
// //                                       Padding(
// //                                         padding: const EdgeInsets.all(4.0),
// //                                         child: ClipRRect(
// //                                             borderRadius: BorderRadius.circular(15.0),
// //                                             child: Image.network(
// //                                                 'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg')),
// //                                       ),
// //                                       Padding(
// //                                         padding: const EdgeInsets.all(4.0),
// //                                         child: ClipRRect(
// //                                             borderRadius: BorderRadius.circular(15.0),
// //                                             child: Image.network(
// //                                                 'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg')),
// //                                       )
// //                                     ],
// //                                   ),
// //                                 ),
// //                                   /*Flexible*/
// //                                     Container(
// //                                       margin: const EdgeInsets.all(16.0),
// //                                       child: ElevatedButton(
// //                                           child: const Text('Move Screen'),
// //                                           onPressed: (){
// //                                             Navigator.push(context,
// //                                                 MaterialPageRoute(builder: (context) => DetailScreen(place: place,)));
// //                                           },
// //                                       ),
// //                                     )
//
//           /*Expanded*/
//           // SizedBox(
//           //   height: 500,
//           //     child: Column(
//           //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //       children: <Widget>[
//           //         Expanded(
//           //           child: Container(
//           //             color: Colors.red,
//           //           ),
//           //         ),
//           //         Expanded(
//           //           child: Container(
//           //             color: Colors.orange,
//           //           ),
//           //         ),
//           //         Expanded(
//           //           child: Container(
//           //             color: Colors.yellow,
//           //           ),
//           //         ),
//           //         Expanded(
//           //           child: Container(
//           //             color: Colors.green,
//           //           ),
//           //         ),
//           //       ],
//           //   ),
//           // ),
//
//           //ListView.separated()
//           // Container(
//           //   height: 500,
//           //   margin: const EdgeInsets.all(16.0),
//           //   child: ListView.separated(
//           //       itemBuilder: (BuildContext context, int index){
//           //         return Container(
//           //           height: 250,
//           //           decoration: BoxDecoration(
//           //             color: Colors.grey,
//           //             border: Border.all(color: Colors.black),
//           //           ),
//           //           child: Center(
//           //             child: Text(
//           //               '${items[index]}',
//           //               style: const TextStyle(fontSize: 50),
//           //             ),
//           //           ),
//           //         );
//           //       },
//           //       separatorBuilder: (BuildContext context, int index){
//           //         return const Divider();
//           //       },
//           //       itemCount: items.length),
//           // ),
//           //ListView.Builder()
//           // Container(
//           //   height: 500,
//           //   margin: const EdgeInsets.all(16.0),
//           //   child: ListView.builder(
//           //     itemCount: items.length,
//           //     itemBuilder: (BuildContext context, int index){
//           //       return Container(
//           //         height: 250,
//           //         decoration: BoxDecoration(
//           //           color: Colors.grey,
//           //           border: Border.all(color: Colors.black),
//           //         ),
//           //         child: Center(
//           //           child: Text(
//           //             '${items[index]}',
//           //             style: const TextStyle(fontSize: 50),
//           //           ),
//           //         ),
//           //       );
//           //     },
//           //   )
//           // )
//
//           //listview dinamis
//           // Container(
//           //   margin: const EdgeInsets.all(16.0),
//           //   height: 350,
//           //   child: ListView(
//           //     children: items.map((number){
//           //       return Container(
//           //       height: 250,
//           //       decoration: BoxDecoration(
//           //         color: Colors.grey,
//           //         border: Border.all(color: Colors.black),
//           //       ),
//           //       child: Center(
//           //       child: Text(
//           //       '$number', // Ditampilkan sesuai item
//           //       style: const TextStyle(fontSize: 50),
//           //           ),
//           //         ),
//           //       );
//           //     }).toList(),
//           //   ),
//           // ),
//           // Container(
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //       ElevatedButton(
//           //         child: const Text('Tombol Submit',
//           //           style: TextStyle(fontSize: 16.0),
//           //         ),
//           //         onPressed: (){
//           //         },
//           //       ),
//           //       TextButton(
//           //         child: const Text('Tombol Text Button'),
//           //         onPressed: (){},
//           //       ),
//           //     ],
//           //   )
//           // ),
//           // Container(
//           //   child: Row(
//           //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //       children: <Widget>[
//           //         DropdownButton<String>(
//           //             items: const <DropdownMenuItem<String>>[
//           //               DropdownMenuItem<String>(
//           //                 value: 'Dart',
//           //                 child: Text('Dart'),
//           //               ),
//           //               DropdownMenuItem<String>(
//           //                 value: 'Kotlin',
//           //                 child: Text('Kotlin'),
//           //               ),
//           //               DropdownMenuItem<String>(
//           //                 value: 'Swift',
//           //                 child: Text('Swift'),
//           //               ),
//           //             ],
//           //             value: language,
//           //             hint: const Text('Select Language'),
//           //             onChanged: (String? value) {
//           //               setState(() {
//           //                 language = value;
//           //               });
//           //             }
//           //         ),
//           //       ]
//           //   )
//           // ),
//
//           /*
//           * Contoh onChange
//           * */
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //       TextField(
//           //         decoration: const InputDecoration(
//           //           hintText: 'test',
//           //           labelText: 'test'
//           //         ),
//           //         onChanged: (String value){
//           //           setState(() {
//           //             _name = value;
//           //           });
//           //         },
//           //       ),
//           //       const SizedBox(height: 20),
//           //       ElevatedButton(
//           //           child: const Text('submit'),
//           //           onPressed: (){
//           //             showDialog(
//           //                 context: context,
//           //                 builder: (context){
//           //               return AlertDialog(
//           //                 content: Text('Hello, $_name'),
//           //               );
//           //             });
//           //           },
//           //         )
//           //     ],
//           //   ),
//           // ),
//           /*
//           * Contoh Controller
//           * */
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //       TextField(
//           //         controller: _controller,
//           //         decoration: const InputDecoration(
//           //           hintText: 'Write your name here...',
//           //           labelText: 'Your Name',
//           //         ),
//           //       ),
//           //       const SizedBox(height: 20),
//           //       ElevatedButton(
//           //         child: const Text('Submit'),
//           //         onPressed: () {
//           //           showDialog(
//           //               context: context,
//           //               builder: (context) {
//           //                 return AlertDialog(
//           //                   content: Text('Hello, ${_controller.text}'),
//           //                 );
//           //               });
//           //         },
//           //       )
//           //
//           //     ],
//           //   ),
//           // )
//
//           /* Switch*/
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //           Switch(
//           //               value: isLightOpen,
//           //               onChanged: (bool value){
//           //                   setState(() {
//           //                     isLightOpen = value;
//           //                   });
//           //                   ScaffoldMessenger.of(context).showSnackBar(
//           //                     SnackBar(content: Text(isLightOpen ? 'Light on' : 'Light off'),
//           //                     duration: Duration(seconds: 1),
//           //                   ),
//           //                   );
//           //               })
//           //     ],
//           //   ),
//           // ),
//
//           /* Radio */
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //       ListTile(
//           //         leading: Radio<String>(
//           //           value: 'Dart',
//           //           groupValue: language,
//           //           onChanged: (String? value) {
//           //             setState(() {
//           //               language = value;
//           //               showSnackbar();
//           //             });
//           //           },
//           //         ),
//           //         title: Text('Dart'),
//           //       ),
//           //       ListTile(
//           //         leading: Radio<String>(
//           //           value: 'Kotlin',
//           //           groupValue: language,
//           //           onChanged: (String? value) {
//           //             setState(() {
//           //               language = value;
//           //               showSnackbar();
//           //             });
//           //           },
//           //         ),
//           //         title: Text('Kotlin'),
//           //       ),
//           //       ListTile(
//           //         leading: Radio<String>(
//           //           value: 'Swift',
//           //           groupValue: language,
//           //           onChanged: (String? value) {
//           //             setState(() {
//           //               language = value;
//           //               showSnackbar();
//           //             });
//           //           },
//           //         ),
//           //         title: Text('Swift'),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           /*checkbox*/
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //
//           //   ListTile(
//           //   leading: Checkbox(
//           //     value: agree,
//           //     onChanged: (bool? value) {
//           //       setState(() {
//           //         agree = value!;
//           //       });
//           //     },
//           //   ),
//           //   title: Text('Agree / Disagree'),
//           // ),
//           //     ],
//           //   ),
//           // )
//
//           /*Image.network*/
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
//           //     children: <Widget>[
//           //
//           //       Image.network(
//           //         'https://tse4.mm.bing.net/th?id=OIP.mm8JucFufPWr2ls_I1h_0wHaDt&pid=Api&P=0&h=180',
//           //       width: 70,
//           //       height: 70,
//           //     ),
//           //       Image.asset('image/th.jpeg', width: 70, height: 70,),
//           //       Text('Font Test',style: TextStyle(
//           //         fontFamily: 'Oswald',
//           //         fontSize: 40,
//           //       ),)
//           //     ],
//           //   ),
//           // )
//         ],
//       ),
//     )));
//   }
// }

/*
* ElevatedButton
*
* parameter "ElevatedButton"
    - onPressed => event yg dijalankan ketika ada trigger dari user
    - child => diisi dengan beberapa widget
*
*
      ElevatedButton(
        child: const Text("Tombol"),
        onPressed: () {
          // Aksi ketika button diklik
        },
      ),
*
*
* parameter onLongPress
* parameter onHighlightChanged
*
*
* TextButton
*
* TextButton => widget button yang polos, digunakkan untuk
*               toolbars, dialog, atau komponen lainnya.
*
      TextButton(
        child: const Text('Text Button'),
        onPressed: () {
          // Aksi ketika button diklik
        },
      ),
*
* OutlinedButton
*
* OutlinedButton => widget button yang sama seperti TextButton, namun ada
*                   tambahan outline, biasanya digunakkan untuk aksi yg
*                   penting, tetapi bukan aksi utama dalam apps.
*
      OutlinedButton(
        child: const Text('Outlined Button'),
        onPressed: () {
          // Aksi ketika button diklik
        },
      ),
*
*
* IconButton
*
* IconButton => widget button dengan icon, ia tdk memiliki child
*
      IconButton(
      icon: const Icon(Icons.volume_up),
      tooltip: 'Increase volume by 10',
      onPressed: () {
        // Aksi ketika button diklik
      },
    ),
*
* DropdownButton
*
* DropdownButton => widget button yang diklik akan muncul pop-up list
                    dari beberapa item yg bisa dipilih
* */

/*
* Input Widget
*
* Widget TextField
*
* String _name = '';

TextField(
  onChanged: (String value) {
    setState(() {
      _name = value;
    });
  },
)
* */

/*
* image
*
* image.network(url)
* image.asset(path dari folder project)
*
* khusus asset harus di deklasrasi dulu file atau folder assetsnya di file pubspec.yaml
* */

/*
* SingleChildScrollView
*
* untuk scroll agar tampilan tidak overflow
* */
