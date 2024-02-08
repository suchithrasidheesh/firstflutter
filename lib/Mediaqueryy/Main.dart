import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeMaterial.dart';

void main(){
  runApp(MaterialApp(home:Material(),
  debugShowCheckedModeBanner:false,
  ));
}
class Material extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeMaterial();
  }

}