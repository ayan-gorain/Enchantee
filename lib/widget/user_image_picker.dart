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
          height: 300,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Camera'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    shadowColor: Colors.lightBlue,
                  ),
                  onPressed: () => _pickImageC(),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  child: Text('Gallary'),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    shadowColor: Colors.lightBlue,
                  ),
                  onPressed: () => _pickImageG(),

                ),


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
              child: ClipRRect(
                child: Image.asset('assets/images/download.png'),
                borderRadius: BorderRadius.circular(50.0),
              ),
              foregroundImage: FileImage(_pickedImage
              )

            ),
            Positioned(
                left: 68,
                bottom:68,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xff94d500),
                  child: IconButton(
                    icon: const Icon(
                      Icons.camera_alt,size: 16,
                      color: Colors.white,
                    ),
                    onPressed: _menu
                    ,
                  ),
                ),



            )
          ],

        ),
      ],
    );
  }
}
