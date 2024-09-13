void main() {
  // Inisialisasi set dengan elemen-elemen halogen
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Inisialisasi set kosong dengan tipe String
  var names1 = <String>{};
  names1
      .add('Lintang Aprillya Sari'); // Menambahkan elemen dengan metode .add()
  names1.add('2241720231'); // Menambahkan elemen lain dengan metode .add()

  // Inisialisasi set kosong dengan tipe String (alternatif)
  Set<String> names2 = {};
  names2.addAll([
    'Lintang Aprillya Sari',
    '2241720231'
  ]); // Menambahkan beberapa elemen dengan metode .addAll()

  // Mencetak set
  print(names1); // Mencetak set names1
  print(names2); // Mencetak set names2
}
