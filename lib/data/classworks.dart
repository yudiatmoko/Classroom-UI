import 'package:flutter/material.dart';

class ClassWorks {
  var icon;
  String topic;
  String dateTime;

  ClassWorks({required this.icon, required this.topic, required this.dateTime});
}
List<ClassWorks> classWorkList4 = [
  ClassWorks(
      icon: Icons.book_outlined,
      topic: "Materi Pertemuan 4",
      dateTime: "Posted 4 Mar 2022, 09.00"
  ),
  ClassWorks(
      icon: Icons.assignment_outlined,
      topic: "Tugas Pertemuan 4",
      dateTime: "Due 7 Mar 2022, 12.00"
  ),
];

List<ClassWorks> classWorkList3 = [
  ClassWorks(
      icon: Icons.book_outlined,
      topic: "Materi Pertemuan 3",
      dateTime: "Posted 25 Feb 2022, 09.00"
  ),
  ClassWorks(
      icon: Icons.assignment_outlined,
      topic: "Tugas Pertemuan 3",
      dateTime: "Due 28 Feb 2022, 12.00"
  ),
];

List<ClassWorks> classWorkList2 = [
  ClassWorks(
      icon: Icons.book_outlined,
      topic: "Materi Pertemuan 2",
      dateTime: "Posted 15 Feb 2022, 09.00"
  ),
  ClassWorks(
      icon: Icons.assignment_outlined,
      topic: "Tugas Pertemuan 2",
      dateTime: "Due 18 Feb 2022, 12.00"
  ),
];

List<ClassWorks> classWorkList1 = [
  ClassWorks(
      icon: Icons.book_outlined,
      topic: "Materi Pertemuan 1",
      dateTime: "Posted 6 Feb 2022, 09.00"
  ),
  ClassWorks(
      icon: Icons.assignment_outlined,
      topic: "Tugas Pertemuan 1",
      dateTime: "Due 9 Feb 2022, 12.00"
  ),
];

