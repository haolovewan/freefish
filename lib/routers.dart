import 'package:flutter/material.dart';

import './views/home.dart';

final Map routers = <String, WidgetBuilder>{
  '/': (BuildContext context) => new HomePage(),
};