import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc.dart';

void main() {
  setupServiceLocator();
  runApp(DocDoc(appRouter: AppRouter()));
}
