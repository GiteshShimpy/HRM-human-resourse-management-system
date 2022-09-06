import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  ImagePickerDemo({Key? key}) : super(key: key);

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Widget BottomSheet() {
    return Container(
      decoration: BoxDecoration(
        border: (Border.all(width: 0.1, color: Colors.white)),
        borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
      ),
      height: 200.0,
      child: Column(children: [
        SizedBox(height: 10.0),
        Text(
          "Choose picture from",
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 37, 62, 129))),
          onPressed: () {
            getimage(ImageSource.camera);
          },
          child: Row(
            children: [
              Icon(Icons.camera),
              SizedBox(width: 15.0),
              Text("Camera"),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 37, 62, 129))),
          onPressed: () {
            getimage(ImageSource.gallery);
          },
          child: Row(
            children: [
              Icon(Icons.photo),
              SizedBox(width: 15.0),
              Text("Gallary"),
            ],
          ),
        ),
      ]),
    );
  }

  Future getimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);

    if (image == null) return;

    final temporaryimage = File(image.path);

    setState(() {
      this._image = temporaryimage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          _image == null
              ? CircleAvatar(
                  radius: height * 0.06,
                  backgroundImage: AssetImage("images/profileback.png"))
              : CircleAvatar(
                  radius: height * 0.05,
                  backgroundImage: FileImage(File(_image!.path)),
                ),
          Positioned(
            bottom: 3.0,
            right: 0.5,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => BottomSheet()),
                );
              },
              child: Icon(
                Icons.add_a_photo_rounded,
                color: Color.fromARGB(255, 85, 60, 105),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
