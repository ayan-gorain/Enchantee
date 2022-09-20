import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);

  @override
  State<imagepicker> createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
  File? image;
  Future pickImageg() async{
    try{
      final image =await ImagePicker().pickImage(source:ImageSource.gallery);
      if(image==null)return;
      final imageTemp=File(image.path);

      setState(() => this.image=imageTemp);
    }on PlatformException catch(e){
      print("failed to pick image");
    }
  }
  Future pickImagec() async{
    try{
      final image =await ImagePicker().pickImage(source:ImageSource.camera);
      if(image==null)return;
      final imageTemp=File(image.path);

      setState(() => this.image=imageTemp);
    }on PlatformException catch(e){
      print("failed to pick image");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                    child: Image.asset('assets/images/download.png'),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  foregroundImage: FileImage(image ?? File(""))

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
                    onPressed:()
                    {
                      showModalBottomSheet(context: context,
                          builder: (BuildContext context){
                            return Container(
                              height: 200,
                              color: Colors.amber,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children:<Widget> [
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
                                      onPressed: () => pickImagec(),
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
                                      onPressed: () => pickImageg(),

                                    ),

                                  ],
                                ),
                              ),
                            );
                          });
                    },


                  ),
                ),




              )
            ],
          )
        ],
      ),
    );
  }
}
