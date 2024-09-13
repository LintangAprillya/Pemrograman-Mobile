void main() {
  // Langkah 1
  var list1 = [1, 2, 3]; // Inisialisasi list pertama dengan 3 elemen
  assert(list1.length == 3); // Memeriksa apakah panjang list 3
  assert(list1[1] == 2); // Memastikan elemen kedua adalah 2
  //print(list1.length); // Mencetak panjang list (3)
  //print(list1[1]); // Mencetak elemen kedua (2)

  list1[1] = 1; // Mengubah elemen kedua menjadi 1
  assert(list1[1] == 1); // Memastikan perubahan berhasil
  //print(list1[1]); // Mencetak elemen kedua yang baru (1)

  // Langkah 3: Mengubah list menjadi bertipe String
  final List<String?> list2 = List.filled(
      5, null); // List bertipe String? dengan ukuran 5 dan default null
  list2[1] = 'Lintang Aprillya Sari'; // Mengisi elemen ke-1 dengan nama Anda
  list2[2] = '2241720231'; // Mengisi elemen ke-2 dengan NIM Anda

  print(list2); // Mencetak list kedua
}
