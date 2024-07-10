import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';


class MyDropDownMenu1 extends StatefulWidget {
  const MyDropDownMenu1({super.key});

  @override
  State<MyDropDownMenu1> createState() => _MyDropDownMenu1State();
}

class _MyDropDownMenu1State extends State<MyDropDownMenu1> {
  final TextEditingController dropDownMenu1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    categorieNames.sort();
    return DropdownMenu(
      initialSelection: null,
      // controller: dropDownMenu1Controller,
      // enableFilter: true,
      // requestFocusOnTap: true,
      width: width,
      //labelStyle:const TextStyle(color:Colors.blue),
      //inputDecorationTheme: InputDecoration(),
      
      label: const Text("Choisir un type de médicament"),
      textStyle: const TextStyle(color:Colors.green),
      //menuStyle: MenuStyle(backgroundColor:  WidgetStateProperty.all( Color.fromARGB(255, 170, 215, 252))),
      onSelected: (newValue) {
        context.read<MyVariableToListen>().settextDropdown1(newValue);
        context.read<MyVariableToListen>().settextDropdown2(null);
        context.read<MyVariableToListen>().settextDropdown3(null);
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
      },

      dropdownMenuEntries: categorieNames.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value,
          label: value,
          style: MenuItemButton.styleFrom(
          foregroundColor: Colors.green,
          //backgroundColor: const Color.fromARGB(255, 212, 234, 251),
          )
        );
      }).toList(),
    );
  }
}