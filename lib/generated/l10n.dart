// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get changeLanguage {
    return Intl.message(
      'Change language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Notification Screen`
  String get notificationScreen {
    return Intl.message(
      'Notification Screen',
      name: 'notificationScreen',
      desc: 'Screen for testing notification',
      args: [],
    );
  }

  /// `Enter your name here`
  String get enterYourNameHere {
    return Intl.message(
      'Enter your name here',
      name: 'enterYourNameHere',
      desc: 'Ask user to enter their name',
      args: [],
    );
  }

  /// `Your name is {userName}`
  String yourNameIs(String userName) {
    return Intl.message(
      'Your name is $userName',
      name: 'yourNameIs',
      desc: 'Show username',
      args: [userName],
    );
  }

  /// `Enter any number here`
  String get enterAnyNumberHere {
    return Intl.message(
      'Enter any number here',
      name: 'enterAnyNumberHere',
      desc: 'Ask user to enter any number',
      args: [],
    );
  }

  /// `{username}'s number is {number}`
  String userNumberIs(String username, double number) {
    final NumberFormat numberNumberFormat = NumberFormat.compactSimpleCurrency(
        locale: Intl.getCurrentLocale(), decimalDigits: 1);
    final String numberString = numberNumberFormat.format(number);

    return Intl.message(
      '$username\'s number is $numberString',
      name: 'userNumberIs',
      desc: 'Show user\'s number',
      args: [username, numberString],
    );
  }

  /// `Today is {today}, tomorrow is {tomorrow}`
  String todayTomorrow(DateTime today, DateTime tomorrow) {
    final DateFormat todayDateFormat = DateFormat.yMd(Intl.getCurrentLocale());
    final String todayString = todayDateFormat.format(today);

    final DateFormat tomorrowDateFormat =
        DateFormat.yMd(Intl.getCurrentLocale());
    final String tomorrowString = tomorrowDateFormat.format(tomorrow);

    return Intl.message(
      'Today is $todayString, tomorrow is $tomorrowString',
      name: 'todayTomorrow',
      desc: 'Show today and tomorrow for user',
      args: [todayString, tomorrowString],
    );
  }

  /// `{count,plural, =0{no {thing}} =1{{count} {thing}} other{{count} {thing}s}`
  String nThings(int count, String thing) {
    return Intl.message(
      '{count,plural, =0{no $thing} =1{$count $thing} other{$count ${thing}s}',
      name: 'nThings',
      desc: 'plural message with thing parameter',
      args: [count, thing],
    );
  }

  /// `chicken`
  String get chicken {
    return Intl.message(
      'chicken',
      name: 'chicken',
      desc: 'Chicken in english',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
