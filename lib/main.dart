import 'package:flutter/material.dart';
import 'core/di/service_locator.dart';
import 'core/routing/app_router.dart';
import 'core/shared_pref/shared_pref_helper.dart';
import 'doc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await SharedPrefHelper.init();

  await setUpServiceLocator();

  runApp(DocDoc(appRouter: AppRouter()));
}