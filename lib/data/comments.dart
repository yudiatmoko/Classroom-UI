import 'package:flutter/material.dart';

class Comments{
  var userName;
  var userDp;
  var date;
  var comment;

  Comments({this.userName, this.userDp, this.date, this.comment});
}

List<Comments> basdat = [
  Comments(
      userName: "New Assignment",
      userDp: Icons.assignment_outlined,
      date: "4 Mar",
      comment:"Tugas Pertemuan 4"),
  Comments(
      userName: "New Material",
      userDp: Icons.book_outlined,
      date: "4 Mar",
      comment:"Materi Pertemuan 4"),
  Comments(
      userName: "New Assignment",
      userDp: Icons.assignment_outlined,
      date: "25 Feb",
      comment:"Tugas Pertemuan 3"),
  Comments(
      userName: "New Material",
      userDp: Icons.book_outlined,
      date: "25 Feb",
      comment:"Materi Pertemuan 3"),
  Comments(
      userName: "Teachers",
      userDp: Icons.person_outline,
      date: "18 Feb",
      comment: "Assalamualaikum, selamat sore. Hari ini tidak ada pertemuan via Zoom/Google Meet ya. Jika ada yang ingin ditanyakan, silahkan komen di sini. Untuk absensi silahkan diisi dengan resume materi yang sudah kalian kerjakan sebagai tugas minggu ini. Terima Kasih"),
  Comments(
      userName: "New Assignment",
      userDp: Icons.assignment_outlined,
      date: "15 Feb",
      comment:"Tugas Pertemuan 2"),
  Comments(
      userName: "New Material",
      userDp: Icons.book_outlined,
      date: "15 Feb",
      comment:"Materi Pertemuan 2"),
  Comments(
      userName: "New Assignment",
      userDp: Icons.assignment_outlined,
      date: "6 Feb",
      comment:"Tugas Pertemuan 1"),
  Comments(
      userName: "New Material",
      userDp: Icons.book_outlined,
      date: "6 Feb",
      comment:"Materi Pertemuan 1")
  
];
