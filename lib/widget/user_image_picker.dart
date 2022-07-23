//import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({Key? key}) : super(key: key);

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}
class _UserImagePickerState extends State<UserImagePicker> {
  File _pickedImage = File('');
  void _pickImageC() async{
    final pickedImageFile=await ImagePicker.pickImage(source:ImageSource.camera);
    setState(() {
      _pickedImage=pickedImageFile;
    });
  }
  void _pickImageG() async{
    final pickedImageFile=await ImagePicker.pickImage(source:ImageSource.gallery);
    setState(() {
      _pickedImage=pickedImageFile;
    });
  }

  void _menu()
  {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Camera'),
                  onPressed: () => _pickImageC(),
                ),
                ElevatedButton(
                  child: const Text('Gallery'),
                  onPressed: () => _pickImageG(),
                )
              ],
            ),
          ),
        );
      },
    );


  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: _pickedImage !=null ?  FileImage(_pickedImage):null,
            ),
            Positioned(
                left: 56,
                bottom:60,
                child: IconButton(
                  onPressed: _menu,
                  icon: const Icon(
                    Icons.camera_alt,
                    size: 30,
                  ),
                ))
          ],

        ),
      ],
    );
  }
}
