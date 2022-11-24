import 'package:proyecto_moviles/page/listtask.dart';
import 'package:proyecto_moviles/page/login.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterPage();
  }
}

class _RegisterPage extends State<RegisterPage> {
  String? stateValue;
  TextEditingController? cityController;
  TextEditingController? yourNameController;
  TextEditingController? myBioController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cityController = TextEditingController();
    yourNameController = TextEditingController();
    myBioController = TextEditingController();
  }

  @override
  void dispose() {
    cityController?.dispose();
    yourNameController?.dispose();
    myBioController?.dispose();
    super.dispose();
  }

  String dropdownvalue = 'State';
  var items = [
    'State',
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinoi',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Monta',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dak',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvani',
    'Rhode Island',
    'South Caroli',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washingto',
    'West Virginia',
    'Wisconsin',
    'Wyoming',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: SelectionArea(
            child: Text(
              'Crear Perfil',
            )),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                child: TextFormField(
                  controller: yourNameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    /*labelText: 'Your Name',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),*/
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF1F4F8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF1F4F8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  /*style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF101213),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),*/
                  maxLines: null,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                child: TextFormField(
                  controller: cityController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Your City',
                    /*labelStyle: Theme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),*/
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF1F4F8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF1F4F8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  /*style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF101213),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),*/
                  maxLines: null,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                child:
                DropdownButton(

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                /*DropdownButton<String>(
                  initialOption: stateValue ??= 'State',
                  items: [
                    'State',
                    'Alabama',
                    'Alaska',
                    'Arizona',
                    'Arkansas',
                    'California',
                    'Colorado',
                    'Connecticut',
                    'Delaware',
                    'Florida',
                    'Georgia',
                    'Hawaii',
                    'Idaho',
                    'Illinoi',
                    'Indiana',
                    'Iowa',
                    'Kansas',
                    'Kentucky',
                    'Louisiana',
                    'Maine',
                    'Maryland',
                    'Massachusetts',
                    'Michigan',
                    'Minnesota',
                    'Mississippi',
                    'Missouri',
                    'Monta',
                    'Nebraska',
                    'Nevada',
                    'New Hampshire',
                    'New Jersey',
                    'New Mexico',
                    'New York',
                    'North Carolina',
                    'North Dak',
                    'Ohio',
                    'Oklahoma',
                    'Oregon',
                    'Pennsylvani',
                    'Rhode Island',
                    'South Caroli',
                    'South Dakota',
                    'Tennessee',
                    'Texas',
                    'Utah',
                    'Vermont',
                    'Virginia',
                    'Washingto',
                    'West Virginia',
                    'Wisconsin',
                    'Wyoming'
                  ],
                  onChanged: (val) => setState(() => stateValue = val),
                  width: double.infinity,
                  height: 56,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF101213),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Select State',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF57636C),
                    size: 15,
                  ),
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Color(0xFFE0E3E7),
                  borderWidth: 2,
                  borderRadius: 8,
                  margin: EdgeInsetsDirectional.fromSTEB(20, 4, 12, 4),
                  hidesUnderline: true,
                ),*/
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                child: TextFormField(
                  controller: myBioController,
                  obscureText: false,
                  decoration: InputDecoration(
                    /*labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Your bio',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),*/
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF1F4F8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF1F4F8),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  /*style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF101213),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),*/
                  textAlign: TextAlign.start,
                  maxLines: 3,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => LoginPage(),
                            ),
                                (route) =>
                            false,
                          );
                        },
                        child: const Text('Returno to Login'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => ListPage(),
                            ),
                                (route) =>
                            false,
                          );
                        },
                        child: const Text('save'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
