import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Seller extends StatefulWidget {
  @override
  _SellerState createState() => _SellerState();
}

class _SellerState extends State<Seller> {
  @override
  Widget build(BuildContext context){
    bool login = false;
  return Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Card(
              elevation: 2,
              child: login?Login():Register(),
            ),
          );
        }
      }

class Register extends StatefulWidget {
  Register({Key key, this.login}) : super(key: key);
  final bool login;
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  bool login = false;
  void change(){
    setState((){
      login = !login;
    });
  }
  Future<FormDependency> _dependencies;
  Model _model;

  List<District> _districtList;
  District _currentDistrict;
  List<District> _currentDistrictList;
  final regkey = GlobalKey<FormState>();
    void initState() {
    super.initState();

    _model = Model(state: null, district: null);
    _districtList = null;
    _currentDistrict = null;
    _currentDistrictList = null;

    _dependencies = _getFormDependency();
  }
  Future<FormDependency> _getFormDependency() async {
    var state1 = _State(id: 1, name: 'Andhra Pradesh');
    var state2 = _State(id: 2, name: 'Arunachal Pradesh');
    var state3 = _State(id: 3, name: 'Assam');
    var state4 = _State(id: 4, name: 'Bihar');
    var state5 = _State(id: 5, name: 'Chhattisgarh');
    var state6 = _State(id: 6, name: 'Goa');
    var state7 = _State(id: 7, name: 'Gujarat');
    var state8 = _State(id: 8, name: 'Haryana');
    var state9 = _State(id: 9, name: 'Himachal Pradesh');
    var state10 = _State(id: 10, name: 'Jharkhand');
    var state11 = _State(id: 11, name: 'Karnataka');
    var state12 = _State(id: 12, name: 'Kerala');
    var state13 = _State(id: 13, name: 'Madhya Pradesh');
    var state14 = _State(id: 14, name: 'Maharashtra');
    var state15 = _State(id: 15, name: 'Manipur');
    var state16 = _State(id: 16, name: 'Meghalaya');
    var state17 = _State(id: 17, name: 'Mizoram');
    var state18 = _State(id: 18, name: 'Nagaland');
    var state19 = _State(id: 19, name: 'Odisha');
    var state20 = _State(id: 20, name: 'Punjab');
    var state21 = _State(id: 21, name: 'Rajasthan');
    var state22 = _State(id: 22, name: 'Sikkim');
    var state23 = _State(id: 23, name: 'Tamil Nadu');
    var state24 = _State(id: 24, name: 'Telangana');
    var state25 = _State(id: 25, name: 'Tripura');
    var state26 = _State(id: 26, name: 'Uttar Pradesh');
    var state27 = _State(id: 27, name: 'Uttarakhand');
    var state28 = _State(id: 28, name: 'West Bengal');
    var state29 = _State(id: 29, name: 'Andaman and Nicobar Islands');
    var state30 = _State(id: 30, name: 'Chandigarh');
    var state31 = _State(id: 31, name: 'Dadra and Nagar Haveli and Daman and Diu');
    var state32 = _State(id: 32, name: 'Delhi');
    var state33 = _State(id: 33, name: 'Jammu and Kashmir');
    var state34 = _State(id: 34, name: 'Ladakh');
    var state35 = _State(id: 35, name: 'Lakshadweep');
    var state36 = _State(id: 36, name: 'Puducherry');

    var stateList = [
      state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15,state16,state17,state18,state19,state20,state21,state22,state23,state24,state25,state26,state27,state28,state29,state30,state31,state32,state33,state34,state35,state36,
    ];
    var districtList = [
      //Andhra Pradesh
      District(name: 'Anantapur', state: state1),
      District(name: 'Chittoor', state: state1),
      District(name: 'East Godavari', state: state1),
      District(name: 'Guntur', state: state1),
      District(name: 'Krishna', state: state1),
      District(name: 'Kurnool', state: state1),
      District(name: 'Prakasam', state: state1),
      District(name: 'Srikakulam', state: state1),
      District(name: 'Sri Potti Sriramulu Nellore', state: state1),
      District(name: 'Visakhapatnam', state: state1),
      District(name: 'Vizianagaram', state: state1),
      District(name: 'West Godavari', state: state1),
      District(name: 'YSR District, Kadapa (Cuddapah)', state: state1),
      //Arunachal Pradesh
      District(name: 'Anjaw', state: state2),
      District(name: 'Changlang', state: state2),
      District(name: 'Dibang Valley', state: state2),
      District(name: 'East Kameng', state: state2),
      District(name: 'East Siang', state: state2),
      District(name: 'Kamle', state: state2),
      District(name: 'Kra Daadi', state: state2),
      District(name: 'Kurung Kumey', state: state2),
      District(name: 'Lepa Rada', state: state2),
      District(name: 'Lohit', state: state2),
      District(name: 'Longding', state: state2),
      District(name: 'Lower Dibang Valley', state: state2),
      District(name: 'Lower Siang', state: state2),
      District(name: 'Lower Subansiri', state: state2),
      District(name: 'Namsai', state: state2),
      District(name: 'Pakke Kessang', state: state2),
      District(name: 'Papum Pare', state: state2),
      District(name: 'Shi Yomi', state: state2),
      District(name: 'Siang', state: state2),
      District(name: 'Tawang', state: state2),
      District(name: 'Tirap', state: state2),
      District(name: 'Upper Siang', state: state2),
      District(name: 'Upper Subansiri', state: state2),
      District(name: 'West Kameng', state: state2),
      District(name: 'West Siang', state: state2),
      //Assam
      District(name: 'Baksa', state: state3),
      District(name: 'Barpeta', state: state3),
      District(name: 'Biswanath', state: state3),
      District(name: 'Bongaigaon', state: state3),
      District(name: 'Cachar', state: state3),
      District(name: 'Charaideo', state: state3),
      District(name: 'Chirang', state: state3),
      District(name: 'Darrang', state: state3),
      District(name: 'Dhemaji', state: state3),
      District(name: 'Dhubri', state: state3),
      District(name: 'Dibrugarh', state: state3),
      District(name: 'Dima Hasao (North Cachar Hills)', state: state3),
      District(name: 'Goalpara', state: state3),
      District(name: 'Golaghat', state: state3),
      District(name: 'Hailakandi', state: state3),
      District(name: 'Hojai', state: state3),
      District(name: 'Jorhat', state: state3),
      District(name: 'Kamrup', state: state3),
      District(name: 'Kamrup Metropolitan', state: state3),
      District(name: 'Karbi Anglong', state: state3),
      District(name: 'Karimganj', state: state3),
      District(name: 'Kokrajhar', state: state3),
      District(name: 'Lakhimpur', state: state3),
      District(name: 'Majuli', state: state3),
      District(name: 'Morigaon', state: state3),
      District(name: 'Nagaon', state: state3),
      District(name: 'Nalbari', state: state3),
      District(name: 'Sivasagar', state: state3),
      District(name: 'Sonitpur', state: state3),
      District(name: 'South Salamara-Mankachar', state: state3),
      District(name: 'Tinsukia', state: state3),
      District(name: 'Udalguri', state: state3),
      District(name: 'West Karbi Anglong', state: state3),
      //Bihar
      //Chandigarh (UT)
      //Chhattisgarh
      //Dadra and Nagar Haveli (UT)
      //Daman and Diu (UT)
      //Delhi (NCT)
      //Goa
      //Gujarat
      //Haryana
      //Himachal Pradesh
      //Jammu and Kashmir
      //Jharkhand
      //Karnataka
      //Kerala
      //Lakshadweep (UT)
      //Madhya Pradesh
      //Maharashtra
      //Manipur
      //Meghalaya
      //Mizoram
      //Nagaland
      //Odisha
      //Puducherry (UT)
      //Punjab
      //Rajasthan
      //Sikkim
      //Tamil Nadu
      //Telangana
      //Tripura
      //Uttarakhand
      //Uttar Pradesh
      //West Bengal

    ];

    // Init district variables
    _districtList = districtList;
    _currentDistrict = null;
    _currentDistrictList = null;

    return FormDependency(states: stateList, districts: districtList);
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextEditingController pass = new TextEditingController();
    TextEditingController confirmPass = new TextEditingController();
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Image.asset('assets/images/register.jpg',
                  width: width * 0.35,),
                  InkWell(
                    child: Text('Already Have an Account?'),
                    onTap: change,
                  ),
                ]),
                Container(
                  child: FutureBuilder<FormDependency>(
                    future: _dependencies,
                    builder: (context, snapshot){
                      if(snapshot.connectionState == ConnectionState.done){
                    return Form(
                                  key: regkey,
                                  child: Center(
                                    child: Container(
                                      height: height * 0.7,
                                      width: width * 0.5,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30,
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon: Icon(Icons.person),
                                                  hintText: 'Name',
                                                ),
                                                cursorColor: Colors.red,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Fill your name first';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon: Icon(Icons.dialpad),
                                                  hintText: 'Phone Number',
                                                  counter: SizedBox.shrink(),
                                                ),
                                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                                maxLength: 10,
                                                cursorColor: Colors.red,
                                                autovalidate: true,
                                                validator: (value) {
                                                 if(value.length!=10&&value.isNotEmpty)
                                                  {
                                                    return 'Invalid Number';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                    prefixIcon: Icon(
                                                        Icons.alternate_email),
                                                    hintText: 'Email (Optional)'),
                                                    autovalidate: true,
                                                validator: (value) {
                                                  if (!value.contains('@')&&value.isNotEmpty)
                                                    return 'Enter a valid email id';
                                                  else
                                                    return null;
                                                },
                                                cursorColor: Colors.red,
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon: Icon(Icons.home),
                                                  hintText: 'Address',
                                                ),
                                                cursorColor: Colors.red,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Please tell Where to Reach';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                    prefixIcon:
                                                        Icon(Icons.location_on),
                                                    hintText: 'Landmark'),
                                                cursorColor: Colors.red,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'A Near Point Please';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              CustomDropDownInput<_State>(
                        labelText: 'State',
                        optional: false,
                        enabled: true,
                        initialValue: null,
                        itemList: snapshot.data.states.map((_State state) {
                          return DropdownMenuItem<_State>(
                            
                            value: state,
                            child: Text(state.name),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          _model.state = newValue;
                          _model.district = null;
                  
                          // Reset district dropdown value and update the item list based on the state selected
                          setState(() {
                            _currentDistrict =
                                null; //null is passed to the dropdown build, but the internal valu of dropdown does not set the null value
                            _currentDistrictList = _districtList
                                .where((x) => x.state.id == newValue.id)
                                .toList();
                          });
                        },
                      ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              CustomDropDownInput<District>(
                        labelText: 'District',
                        optional: false,
                        enabled: true,
                        initialValue: _currentDistrict,
                        itemList: (_currentDistrictList != null)
                            ? _currentDistrictList.map((District district) {
                                return DropdownMenuItem<District>(
                                  value: district,
                                  child: Text(district.name),
                                );
                              }).toList()
                            : null,
                        onChanged: (newValue) {
                          _model.district = newValue;
                  
                          // Update initialValue
                          setState(() {
                            _currentDistrict = newValue;
                          });
                        },
                      ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon: Icon(Icons.dialpad),
                                                  hintText: 'PIN Code',
                                                  counter: SizedBox.shrink(),
                                                ),
                                                cursorColor: Colors.red,
                                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                                maxLength: 6,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Enter PIN Code';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon: Icon(Icons.place),
                                                  hintText: 'Username',
                                                ),
                                                cursorColor: Colors.red,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Set your Username';
                                                  }
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon:
                                                      Icon(Icons.fingerprint),
                                                  hintText: 'Password',
                                                ),
                                                cursorColor: Colors.red,
                                                obscureText: true,
                                                controller: pass,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Set Your Password';
                                                  }
                                                  return null;                                             },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),),
                                                  prefixIcon:
                                                      Icon(Icons.fingerprint),
                                                  hintText: 'Re-enter Password',
                                                ),
                                                cursorColor: Colors.red,
                                                obscureText: true,
                                                controller: confirmPass,
                                                autovalidate: true,
                                                validator: (value) {
                                                  if (value.isEmpty&&pass.text.isNotEmpty) {
                                                    return 'Re-enter Password';
                                                  }
                                                  else if(value != pass.text)
                                                  return 'Password Doesn\'t Match';
                                                  return null;
                                                },
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              RaisedButton(
                                                color: Color(int.parse('0xFF6C63FF')),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                onPressed: () {},
                                                child: Text('Register',
                                                style: TextStyle(color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                    }
                    return Container();
                    }),
                ),
                ],
    );
  }
}

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final loginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child:Form(
                                key: loginkey,
                                child: Center(
                                  child: Container(
                                    height: height * 0.7,
                                    width: width * 0.5,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 30.0,
                                        right: 30,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon: Icon(Icons.dialpad),
                                            ),
                                            cursorColor: Colors.red,
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please fill the above Field';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              prefixIcon:
                                                  Icon(Icons.fingerprint),
                                            ),
                                            cursorColor: Colors.green,
                                            obscureText: true,
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please fill the above Field';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          RaisedButton(
                                            onPressed: () {},
                                            child: Text('Login'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
      
    );
  }
}

class _State {
  final id;
  final name;

  _State({@required this.id, @required this.name});
}

class District {
  final name;
  final _State state;

  District({@required this.name, @required this.state});
}

class FormDependency {
  final List<_State> states;
  final List<District> districts;

  FormDependency({@required this.states, @required this.districts});
}

class Model {
  
  _State state;
  District district;

  Model({@required this.state, @required this.district});
}

class CustomDropDownInput<T> extends StatelessWidget {
  const CustomDropDownInput({
    Key key,
    @required this.labelText,
    @required this.itemList,
    @required this.onChanged,
    this.initialValue,
    this.show,
    this.enabled,
    this.optional,
  }) : super(key: key);

  final String labelText;
  final List<DropdownMenuItem<T>> itemList;
  final ValueChanged<T> onChanged;
  final T initialValue;
  final bool show;
  final bool enabled;
  final bool optional;

  String _validateOptional(T value) {
    if (value == null) return "No Value";

    return null;
  }

  void _handleOnChanged(T newValue) {
    if (newValue != null) {
      // Call onChanged callback if registered
      if (onChanged != null) onChanged(newValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return (show == null || show == true)
        ? Column(
            children: <Widget>[
              DropdownButtonFormField(
                icon: Icon(Icons.arrow_drop_down),
                isDense: true,
                decoration: InputDecoration(
                  labelText: labelText,
                  filled: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                validator: (optional != null && optional == false)
                    ? _validateOptional
                    : null,
                disabledHint: (enabled != null &&
                        enabled == false &&
                        itemList != null &&
                        initialValue != null)
                    ? itemList.firstWhere((x) => x.value == initialValue).child
                    : null,
                items: (enabled != null && enabled == false) ? null : itemList,
                onChanged: _handleOnChanged,
                value: initialValue,
              ),
              const SizedBox(
                height: 20.0,
              )
            ],
          )
        : Container();
  }
}