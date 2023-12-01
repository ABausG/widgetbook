import 'package:flutter/material.dart';

class TypesTable extends StatelessWidget {
  const TypesTable({
    super.key,
    this.boolean = true,
    required this.integer,
    required this.decimal,
    required this.string,
    required this.color,
    this.duration = const Duration(seconds: 1),
    required this.person,
  });

  final bool boolean;
  final int integer;
  final double decimal;
  final String string;
  final Color color;
  final Duration duration;
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        const TableRow(
          children: [
            Text('Type'),
            Text('Value'),
          ],
        ),
        TableRow(
          children: [
            Text('$bool'),
            Text('$boolean'),
          ],
        ),
        TableRow(
          children: [
            Text('$int'),
            Text('$integer'),
          ],
        ),
        TableRow(
          children: [
            Text('$double'),
            Text('$decimal'),
          ],
        ),
        TableRow(
          children: [
            Text('$String'),
            Text(string),
          ],
        ),
        TableRow(
          children: [
            Text('$Color'),
            Text('$color'),
          ],
        ),
        TableRow(
          children: [
            Text('$Duration'),
            Text('$duration'),
          ],
        ),
        TableRow(
          children: [
            Text('$Person'),
            Text('${person.name} (${person.age})'),
          ],
        ),
      ],
    );
  }
}

class Person {
  const Person({
    required this.name,
    required this.age,
  });

  final String name;
  final int age;
}