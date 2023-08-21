
import 'dart:convert';

import '../../domain/entities/event.dart';

EventModel? eventModelFromJson(String str) =>
    EventModel.fromJson(json.decode(str));



class EventModel {
  EventModel({
    required this.status,
    required this.message,
    required this.eventList,
  });

  String? status;
  String? message;
  List<EventList> eventList;

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        status: json["status"],
        message: json["message"],
        eventList: List<EventList>.from(json["data"].map((x) => EventList.fromJson(x)))
      );


}

// ignore: must_be_immutable
class EventList extends Event {
  EventList({
    required this.eventId,
    required this.judul,
    required this.namaUndangan,
    required this.deskripsi,
    required this.alamatOffline,
    required this.namaPlatformOnline,
    required this.urlPlatformOnline,
    required this.viaTelepon,
    required this.viaTeleponInfo,
    required this.tglMulai,
    required this.tglSelesai,
    required this.jamMulai,
    required this.jamSelesai,
    required this.status,
    required this.tglDibuat,
    required this.tglDihapus,
    required this.gambar,
    required this.tipeEvent,
  }) : super(
            eventId: eventId,
            judul: judul,
            namaUndangan: namaUndangan,
            deskripsi: deskripsi,
            alamatOffline: alamatOffline,
            namaPlatformOnline: namaPlatformOnline,
            urlPlatformOnline: urlPlatformOnline,
            viaTelepon: viaTelepon,
            viaTeleponInfo: viaTeleponInfo,
            tglMulai:tglMulai,
            tglSelesai:tglSelesai,
            jamMulai:jamMulai,
            jamSelesai:jamSelesai,
            status:status,
            tglDibuat:tglDibuat,
            tglDihapus:tglDihapus,gambar:gambar,tipeEvent:tipeEvent);

  int? eventId;
  String? judul;
  String? namaUndangan;
  String? deskripsi;
  String? alamatOffline;
  String? namaPlatformOnline;
  String? urlPlatformOnline;
  String? viaTelepon;
  dynamic viaTeleponInfo;
  String? tglMulai;
  String? tglSelesai;
  String? jamMulai;
  String? jamSelesai;
  bool? status;
  String? tglDibuat;
  dynamic tglDihapus;
  String gambar;
  String tipeEvent;

  factory EventList.fromJson(Map<String, dynamic> json) => EventList(
        eventId: json["event_id"],
        judul: json["judul"],
        namaUndangan: json["nama_undangan"],
        deskripsi: json["deskripsi"],
        alamatOffline: json["alamat_offline"],
        namaPlatformOnline: json["nama_platform_online"],
        urlPlatformOnline: json["url_platform_online"],
        viaTelepon: json["via_telepon"],
        viaTeleponInfo: json["via_telepon_info"],
        tglMulai: json["tgl_mulai"],
        tglSelesai: json["tgl_selesai"],
        jamMulai: json["jam_mulai"],
        jamSelesai: json["jam_selesai"],
        status: json["status"],
        tglDibuat: json["tgl_dibuat"],
        tglDihapus: json["tgl_dihapus"],
        gambar: json["gambar"],
        tipeEvent: json["tipe_event"],
      );


}
