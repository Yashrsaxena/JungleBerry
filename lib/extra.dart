import 'package:flutter/material.dart';
import 'seller.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<FormDependency> _dependencies;
  Model _model;

  List<District> _tecnologyList;
  District _currentTecnology;
  List<District> _currentTecnologyList;

  @override
  void initState() {
    super.initState();

    _model = Model(state: null, district: null);
    _tecnologyList = null;
    _currentTecnology = null;
    _currentTecnologyList = null;

    _dependencies = _getFormDependency();
  }

  Future<FormDependency> _getFormDependency() async {
    var web = _State(id: 1, name: 'Web');
    var mobile = _State(id: 2, name: 'Mobile');
    var desktop = _State(id: 3, name: 'Desktop');

    var categoryList = [web, mobile, desktop];
    var tecnologyList = [
      District(id: 1, name: 'Angular', state: web),
      District(id: 2, name: 'React', state: web),
      District(id: 3, name: 'Vue', state: web),
      District(id: 3, name: 'Flutter', state: mobile),
      District(id: 4, name: 'Electron', state: desktop),
      District(id: 4, name: 'GTK', state: desktop),
    ];

    // Init district variables
    _tecnologyList = tecnologyList;
    _currentTecnology = _tecnologyList[0];
    _currentTecnologyList = _tecnologyList
        .where((x) => x.state.id == categoryList[0].id)
        .toList();

    return FormDependency(states: categoryList, districts: tecnologyList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Form'),
      ),
      body: FutureBuilder<FormDependency>(
          future: _dependencies,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Form(
                key: formKey,
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: _buildForm(context, snapshot.data),
                  ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  List<Widget> _buildForm(BuildContext context, FormDependency data) {
    List<Widget> form = [];

    // _State
    form.add(CustomDropDownInput<_State>(
      labelText: '_State',
      optional: false,
      enabled: true,
      initialValue: data.states[0],
      itemList: data.states.map((_State state) {
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
          _currentTecnology =
              null; //null is passed to the dropdown build, but the internal valu of dropdown does not set the null value
          _currentTecnologyList = _tecnologyList
              .where((x) => x.state.id == newValue.id)
              .toList();
        });
      },
    ));

    // Tecnologies
    form.add(CustomDropDownInput<District>(
      labelText: 'District',
      optional: false,
      enabled: true,
      initialValue: _currentTecnology,
      itemList: (_currentTecnologyList != null)
          ? _currentTecnologyList.map((District district) {
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
          _currentTecnology = newValue;
        });
      },
    ));

    return form;
  }
}