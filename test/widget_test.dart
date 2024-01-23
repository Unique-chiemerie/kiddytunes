import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiddytunes/app_theme/custom_buttons.dart';
import 'package:kiddytunes/data/song_stringpath.dart';

void main() {
  testWidgets(
    'Testing my FAB for functions',
    (WidgetTester tester) async {
      //trigger the button,
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            floatingActionButton:
                Fab(songpathMap: songPathMap, titlekey: 'Twinkle little star'),
          ),
        ),
      );
      //verify the initial state of the button is not playing
      expect(find.byIcon(Icons.pause), findsNothing);
      //pump the floating action button
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
      //verify that  on tap of the fab icon changes/it's in playing state
      expect(find.byIcon(Icons.pause), findsOneWidget);
      // tap the again to see that it returns to the normal state
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
      //verify the icon changes
      expect(find.byIcon(Icons.pause), findsNothing);
    },
  );
}
