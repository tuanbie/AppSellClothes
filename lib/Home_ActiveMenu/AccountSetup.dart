import 'package:firstapp/Theme/Color.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/src/material/icons.dart';
// import 'package:country_calling_code_picker/picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);
  @override
  Acountt createState() => Acountt();
}

class Acountt extends State<Account> {
  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  DateTime _dateTime = DateTime.now();
  List<String> items = ['Nam', 'Nu', 'LGBT'];
  String? itemclick = 'Nam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fill Your Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.white,
        elevation: 0,
        titleSpacing: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: //_imageFile == null
                          //     ? AssetImage("assets/avt.jpg")
                          //     : FileImage(File(_imageFile.path)),
                          AssetImage("assets/avt.jpg"),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 20.0,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: ((builder) => buttomshet()),
                          );
                        },
                        child: const Icon(
                          Icons.drive_file_rename_outline_outlined,
                          color: Colors.black,
                          size: 28.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Full name',
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Password',
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Column(
                  children: [
                    TextField(
                      cursorWidth: 5,
                      decoration: InputDecoration(
                        hintText: _dateTime == null
                            ? 'Date of Birth'
                            : _dateTime.toString(),
                        fillColor: Color.fromARGB(31, 133, 133, 133),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.date_range,
                            color: AppColors.black,
                          ),
                          onPressed: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: _dateTime == null
                                        ? DateTime.now()
                                        : _dateTime,
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2100))
                                .then(
                              (date) {
                                setState(() {
                                  _dateTime = date!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Email',
                    suffixIcon: Icon(
                      Icons.mail,
                      color: AppColors.black,
                    ),
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
//               Padding(padding:
//               const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
// ),
//                       InternationalPhoneNumberInput(
//                         onInputChanged: (PhoneNumber number) {
//                           print(number.phoneNumber);
//                         },
//                         onInputValidated: (bool value) {
//                           print(value);
//                         },
//                         selectorConfig: SelectorConfig(
//                           selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//                         ),
//                         ignoreBlank: false,
//                         autoValidateMode: AutovalidateMode.disabled,
//                         selectorTextStyle: TextStyle(color: Colors.black),
//                         textFieldController: controller,
//                         formatInput: false,
//                         maxLength: 9,
//                         keyboardType:
//                             TextInputType.numberWithOptions(signed: true, decimal: true),
//                         cursorColor: Colors.black,
//                         inputDecoration: InputDecoration(
//                           contentPadding: EdgeInsets.only(bottom: 15, left: 0),
//                           border: InputBorder.none,
//                           hintText: 'Phone Number',
//                           hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
//                         ),
//                         onSaved: (PhoneNumber number) {
//                           print('On Saved: $number');
//                         },
//                       ),
//                       Positioned(
//                         left: 90,
//                         top: 8,
//                         bottom: 8,
//                         child: Container(
//                           height: 40,
//                           width: 1,
//                           color: Colors.black.withOpacity(0.13),
//                         ),
//                       )
//                     ],
//                   ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Number Phone',
                    border: InputBorder.none,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 242, 242, 242),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconSize: 30,
                      isExpanded: true,
                      value: itemclick,
                      items: items
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (item) => setState(() => itemclick = item),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Account()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttomshet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: <Widget>[
        Text(
          "Thêm ảnh mới!",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                takephoto(ImageSource.camera);
              },
              icon: Icon(Icons.camera),
              label: Text("Camera"),
            ),
            FlatButton.icon(
              onPressed: () {
                takephoto(ImageSource.gallery);
              },
              icon: Icon(Icons.image),
              label: Text("Thư viện"),
            )
          ],
        )
      ]),
    );
  }

  void takephoto(ImageSource sourse) async {
    final pickedfile = await _picker.getImage(
      source: sourse,
    );
    setState(
      () {
        _imageFile = pickedfile!;
      },
    );
  }
}
