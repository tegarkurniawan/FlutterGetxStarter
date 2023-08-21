

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Event extends Equatable{
    Event({
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
    });

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
    
      @override
      // TODO: implement props
      List<Object?> get props => [];

   
}
