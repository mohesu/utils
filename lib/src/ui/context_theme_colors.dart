import 'package:flutter/material.dart';

extension ContextThemeColors on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get secondary => Theme.of(this).colorScheme.secondary;
  Color get secondaryContainer => Theme.of(this).colorScheme.secondaryContainer;
  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;
  Color get background => Theme.of(this).colorScheme.background;
  Color get onBackground => Theme.of(this).colorScheme.onBackground;
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get onSurface => Theme.of(this).colorScheme.onSurface;
  Color get error => Theme.of(this).colorScheme.error;
  Color get onError => Theme.of(this).colorScheme.onError;
  Color? get bottomAppBarColor => BottomAppBarTheme.of(this).color;
  Color get canvasColor => Theme.of(this).canvasColor;
  Color get cardColor => Theme.of(this).cardColor;
  Color get dialogBackgroundColor => Theme.of(this).dialogBackgroundColor;
  Color get disabledColor => Theme.of(this).disabledColor;
  Color get dividerColor => Theme.of(this).dividerColor;
  Color get errorColor => Theme.of(this).colorScheme.error;
  Color get focusColor => Theme.of(this).focusColor;
  Color get highlightColor => Theme.of(this).highlightColor;
  Color get hintColor => Theme.of(this).hintColor;
  Color get hoverColor => Theme.of(this).hoverColor;
  Color get indicatorColor => Theme.of(this).indicatorColor;
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get secondaryHeaderColor => Theme.of(this).secondaryHeaderColor;
  Color get shadowColor => Theme.of(this).shadowColor;
  Color get splashColor => Theme.of(this).splashColor;
  Color get unselectedWidgetColor => Theme.of(this).unselectedWidgetColor;
  Color get surfaceTintColor => Theme.of(this).colorScheme.surfaceTint;
  Color? get appBarColor => Theme.of(this).appBarTheme.backgroundColor;
}
