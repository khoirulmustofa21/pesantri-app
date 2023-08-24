import 'package:get/get.dart';

class PersensiKegiatanController extends GetxController {
  List<String> dataNamaKegiatan = [
    'Haul Akbar Pondok Pesantren Al Iman ke - 100 1',
    'Haul Akbar Pondok Pesantren Al Iman ke - 100 2',
    'Haul Akbar Pondok Pesantren Al Iman ke - 100 3',
    'Haul Akbar Pondok Pesantren Al Iman ke - 100 4',
    'Haul Akbar Pondok Pesantren Al Iman ke - 100 5',
    'Haul Akbar Pondok Pesantren Al Iman ke - 100 6',
  ];
  List<String> dataNamaUstadz = [
    'Malik',
    'Rohim',
    'Rohman',
  ];
  List<String> dataKategoriSantri = [
    'Putra',
    'Putri',
    'Semua',
  ];
  final List<Map<String, dynamic>> data = [
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'semua',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': false,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'semua',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'semua',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'semua',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'semua',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'semua',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'Putra',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'Putra',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
    {
      'kagiatan': 'Haul Akbar Pondok Pesantren Al Iman ke - 100',
      'ustadz': 'Abdul karim',
      'santri': 'Putra',
      'tanggal': 'Jumat, 4 September 2020',
      'jam': '07.00',
      'status': true,
    },
  ];
  RxString selctetdValue = ''.obs;
  RxString selctetdUstadz = ''.obs;
  RxString selctetdKategoriSantri = ''.obs;

  changeData(value) {
    selctetdValue.value = value;
    update();
  }

  setUstadz(value) {
    selctetdUstadz.value = value;
    update();
  }

  setKategoriSantri(value) {
    selctetdKategoriSantri.value = value;
    update();
  }
}
