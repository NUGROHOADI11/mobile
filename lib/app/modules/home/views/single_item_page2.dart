// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:modul1/app/modules/home/controllers/single_item_nav_bar.dart';
// import 'package:modul1/app/modules/home/controllers/single_item_nav_bar2.dart';

// class SingleItemPage2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF232227),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.only(top: 25, left: 10, right: 15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Icon(
//                       Icons.arrow_back_ios_new,
//                       color: Colors.white,
//                       size: 32,
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {},
//                     child: Icon(
//                       CupertinoIcons.cart_fill,
//                       color: Colors.white,
//                       size: 32,
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//                 child: Image.asset(
//                   "images2/p.png",
//                   height: MediaQuery.of(context).size.height / 1.7,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 5),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Hot & Fresh Pizza",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             InkWell(
//                               onTap: () {},
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 width: 30,
//                                 height: 30,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(5),
//                                 ),
//                                 child: Icon(
//                                   CupertinoIcons.minus,
//                                   size: 20,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               "2",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 8),
//                             InkWell(
//                               onTap: () {},
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 width: 30,
//                                 height: 30,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(5),
//                                 ),
//                                 child: Icon(
//                                   CupertinoIcons.plus,
//                                   size: 20,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   Text(
//                     "Description Food.",
//                     style: TextStyle(
//                       color: Colors.white60,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: SingleItemNavBar2(),
//     );
//   }
// }

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingleItemPage2 extends StatefulWidget {
  const SingleItemPage2({super.key});

  @override
  _ImagePicker createState() => _ImagePicker();
}

class _ImagePicker extends State {
  File? imageFile;
  final imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: size.width,
              height: 250,
              child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  color: Colors.blueGrey,
                  strokeWidth: 1,
                  dashPattern: const [5, 5],
                  child: SizedBox.expand(
                    child: FittedBox(
                      child: imageFile != null
                          ? Image.file(File(imageFile!.path), fit: BoxFit.cover)
                          : const Icon(
                              Icons.image_outlined,
                              color: Colors.blueGrey,
                            ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        showPictureDialog();
                      },
                      child: const Center(
                        child: Text(
                          'Pick Image',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          imageFile = null;
                        });
                      },
                      child: const Center(
                        child: Text(
                          'Clear Image',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> showPictureDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select Action'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  getFromCamera();
                  Navigator.of(context).pop();
                },
                child: const Text('Open Camera'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  getFromGallery();
                  Navigator.of(context).pop();
                },
                child: const Text('Open Gallery'),
              ),
            ],
          );
        });
  }

  // get from gallery
  getFromGallery() async {
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  // get from camera
  getFromCamera() async {
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
