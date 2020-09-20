import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medicalstore/const.dart';
import 'package:medicalstore/models/medicine.dart';
import 'package:medicalstore/widgets/add_medicine_button.dart';

class AddMedicineScreen extends StatefulWidget {
  @override
  _AddMedicineScreenState createState() => _AddMedicineScreenState();
}

class _AddMedicineScreenState extends State<AddMedicineScreen> {
  bool morning = false, noon = false, night = false;
  String name;
  int amount, price;
  final _formKey = GlobalKey<FormState>();

  File _image;
  final picker = ImagePicker();
  //function to get the image of medicine
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar,
      body: Padding(
        padding: EdgeInsets.fromLTRB(size.width * 0.05555,
            size.height * 0.029585, size.width * 0.05555, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: GestureDetector(
                  onTap: getImage,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(width: 1, color: Color(0xffc4c4c4))),
                      margin: EdgeInsets.only(bottom: size.height * 0.01479),
                      height: size.height * 0.32544,
                      width: size.width * 0.6111,
                      child: _image == null
                          ? Center(
                              child: SvgPicture.asset(
                                'icons/image.svg',
                              ),
                            )
                          : FittedBox(
                              fit: BoxFit.fill,
                              child: Image.file(
                                _image,
                              ),
                            )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.03479),
              ),
              //medicine name textfield
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                        height: size.height * 0.052,
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.04808,
                          vertical: size.height * 0.007396,
                        ),
                        margin: EdgeInsets.only(
                          bottom: size.width * 0.02808,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(6)),
                        child: TextFormField(
                          onChanged: (value) {
                            name = value;
                          },
                          cursorColor: Color(0xff37A794),
                          style: secondaryTextstyle,
                          decoration: InputDecoration(
                              hintText: 'Medicine Name',
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: size.width / 30)),
                        )),

                    //formfield for amount of tablets
                    Container(
                        height: size.height * 0.052,
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.04808,
                          vertical: size.height * 0.007396,
                        ),
                        margin: EdgeInsets.only(
                          bottom: size.width * 0.02808,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(6)),
                        child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            amount = num.tryParse(value);
                          },
                          cursorColor: Color(0xff37A794),
                          style: secondaryTextstyle,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Amount of tablets',
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: size.width / 30)),
                        )),

                    //formfield for price per tablet
                    Container(
                        height: size.height * 0.052,
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.04808,
                          vertical: size.height * 0.007396,
                        ),
                        margin: EdgeInsets.only(
                          bottom: size.width * 0.02808,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(6)),
                        //textformfield
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            price = num.tryParse(value);
                          },
                          cursorColor: Color(0xff37A794),
                          style: secondaryTextstyle,
                          decoration: InputDecoration(
                              hintText: 'Price per tablet',
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: size.width / 30)),
                        )),
                    //to select when the customer has to take the medicine
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Morning',
                                style: secondaryTextstyle,
                              ),
                              Checkbox(
                                  value: morning,
                                  onChanged: (value) {
                                    morning = value;
                                    setState(() {});
                                  })
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Noon',
                                style: secondaryTextstyle,
                              ),
                              Checkbox(
                                  value: noon,
                                  onChanged: (value) {
                                    noon = value;
                                    setState(() {});
                                  })
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Night',
                                style: secondaryTextstyle,
                              ),
                              Checkbox(
                                  value: night,
                                  onChanged: (value) {
                                    night = value;
                                    setState(() {});
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: size.height * 0.029585)),
                    //add medicine button on tap pops and returns medicine model
                    AddMedicineButton(
                      size: size,
                      onTap: () {
                        if (_formKey.currentState.validate())
                          Navigator.pop(
                              context,
                              Medicine(
                                  name: name,
                                  amount: amount,
                                  pricePerTablet: price,
                                  morning: morning,
                                  noon: noon,
                                  night: night));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
