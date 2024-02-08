import 'package:flutter/cupertino.dart';

import 'MyDeskTop.dart';
import 'MyMobileBody.dart';

class HomeMaterial extends StatefulWidget{
  @override
  State<HomeMaterial> createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    if(deviceWidth<=600) {
      return MyMobileBody();
    }
    else{
      return MyDeskTop();
    }
  }
}