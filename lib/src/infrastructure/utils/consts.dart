import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../l10n/strings.dart';

const delegates = [
  Strings.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

const locales = [
  Locale('ru', 'RU'),
  Locale('en', 'US'),
];
