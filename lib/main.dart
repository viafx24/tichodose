import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyButtonCompute.dart';
import 'MyDropDownMenu1.dart';
import 'MyDropDownMenu2.dart';
import 'MyInputField.dart';
import 'MyResetButton.dart';
import 'MyResult.dart';

void main() {
  runApp(
    Phoenix(
        child: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyVariableToListen()),
      ],
      child: const DropdownMenuApp(),
    )),
  );
}

class DropdownMenuApp extends StatefulWidget {
  const DropdownMenuApp({super.key});

  @override
  State<DropdownMenuApp> createState() => _DropdownMenuAppState();
}

class _DropdownMenuAppState extends State<DropdownMenuApp> {
  @override
  Widget build(BuildContext context) {
    String? textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
    String? textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    int? poids = context.watch<MyVariableToListen>().poids;
    String? volume = context.watch<MyVariableToListen>().volume;

    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green,
        ),
        home: Scaffold(
            body: SafeArea(
                child: Align(
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: widgetSpace),
                        const MyDropDownMenu1(),
                        SizedBox(height: widgetSpace),
                        textDropdown1 != null
                            ? const MyDropDownMenu2()
                            : Container(),
                        SizedBox(height: widgetSpace),
                        textDropdown2 != null ? const MyInputField() : Container(),
                        SizedBox(height: widgetSpace),
                        poids != null ? const MyButtonCompute() : Container(),
                        SizedBox(height: widgetSpace),
                        volume != null ? const MyResult() : Container(),
                        SizedBox(height: widgetSpace),
                        const MyResetButton()
                      ],
                    ))))));
  }
}