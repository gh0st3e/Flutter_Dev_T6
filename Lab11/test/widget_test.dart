// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab11/AuthRepository.dart';
import 'package:lab11/MyClass.dart';
import 'package:mockito/annotations.dart';

import 'package:mockito/mockito.dart';
import 'package:lab11/TestWidget.dart';

import 'package:lab11/main.dart';

class MockMyClass extends Mock implements MyClass {}

void main() {
  testWidgets('Test text entry and button tap', (tester) async {
    // Build the widget tree.
    await tester.pumpWidget(MySliderApp());

    // Find the text field widget and enter text.
    final textField = find.byType(TextField);
    await tester.enterText(textField, 'Hello, world!');

    // Find the button widget and tap it.
    final button = find.byType(ElevatedButton);
    await tester.tap(button);

    // Verify that the result is displayed.
    final result = find.text('Hello, world!');
    expect(result, findsOneWidget);
  });

  testWidgets('Test dragging the slider', (tester) async {
    // Build the widget tree.
    await tester.pumpWidget(MySliderApp());


    final slider = find.byType(Slider);
    await tester.drag(slider, Offset(200.0, 0.0));
    await tester.drag(slider, Offset(0.0, 0.0));

    // Verify that the value has changed
    final value = find.text("0.0");
    expect(value, findsOneWidget);
  });

  group('MyClass', () {
    test('converts string to number', () {
      final myClass = MyClass();
      final result = myClass.convertToNumber('42');
      expect(result, equals(42));
    });

    test('returns null when string is not a number', () {
      final myClass = MyClass();
      final result = myClass.convertToNumber('not a number');
      expect(result, isNull);
    });
  });

  group('MyClass_mock', () {
    test('converts string to number', () {
      final myClass = MockMyClass();
      when(myClass.convertToNumber('42')).thenReturn(42);
      final result = myClass.convertToNumber('42');

      expect(result, equals(42));
      verify(myClass.convertToNumber('42')).called(1);
    });

    test('returns null when string is not a number', () {
      final myClass = MockMyClass();
      when(myClass.convertToNumber('not a number')).thenReturn(null);

      final result = myClass.convertToNumber('not a number');

      expect(result, isNull);
      verify(myClass.convertToNumber('not a number')).called(1);
    });
  });
}
