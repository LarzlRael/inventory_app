import 'package:flutter/material.dart';
import 'package:lavaca/Screens/branch_office.dart';
import 'package:lavaca/Screens/category_branch_office.dart';
import 'package:lavaca/Screens/login_page.dart';
import 'package:lavaca/Screens/register_page.dart';

import '../Screens/list_product.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'branch_office': (_) => BranchOffice(),
  'category_branch_office': (_) => CategoryBranchOffice(),
  'list_product': (_) => ListProduct(),
};
