import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_demo/generated/l10n.dart';
import 'package:i18n_demo/i18n/localizations.dart';

import 'i18n/localizations_delegate.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        HYLocalizationsDelegate.delegate,
        S.delegate
      ],
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(S.of(context).hello, style: TextStyle(fontSize: 20),),
            RaisedButton(
              child: Text(S.of(context).message, style: TextStyle(fontSize: 20),),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000)
                );
              },
            )
          ],
        ),
      ),
    );
  }
}