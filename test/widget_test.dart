import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myunila/homepage.dart'; 

void main() {
  testWidgets('HomePage displays correct elements', (WidgetTester tester) async {
   
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    expect(find.text('Universitas Lampung'), findsOneWidget);

    expect(find.text('Prof. Dr. Ir. Lusmeilia Afriani. D. E. A., IPM., ASEAN Eng.'), findsOneWidget);

    expect(find.text('UNGUL'), findsOneWidget);
    expect(find.text('AKTIF'), findsOneWidget);

    expect(find.text('001026'), findsOneWidget);

    expect(find.text('humas@kpa.unila.ac.id'), findsOneWidget);
  });
}
