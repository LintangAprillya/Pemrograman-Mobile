void main() {
  // Inisialisasi dan modifikasi map gifts
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  // Menambahkan elemen nama dan NIM ke map gifts
  gifts['name'] = 'Lintang Aprillya Sari'; // Menambahkan nama
  gifts['NIM'] = '2241720231'; // Menambahkan NIM

  // Inisialisasi dan modifikasi map nobleGases
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // Menambahkan elemen nama dan NIM ke map nobleGases
  nobleGases[20] = 'Lintang Aprillya Sari'; // Menambahkan nama dengan key 20
  nobleGases[21] = '2241720231'; // Menambahkan NIM dengan key 21

  // Inisialisasi map mhs1 dan mhs2
  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Lintang Aprillya Sari'; // Menambahkan nama
  mhs1['NIM'] = '2241720231'; // Menambahkan NIM

  var mhs2 = Map<int, String>();
  mhs2[30] = 'Lintang Aprillya Sari'; // Menambahkan nama dengan key 30
  mhs2[31] = '2241720231'; // Menambahkan NIM dengan key 31

  // Menampilkan map setelah dimodifikasi
  print('gifts:');
  print(gifts);
  print('nobleGases:');
  print(nobleGases);
  print('mhs1:');
  print(mhs1);
  print('mhs2:');
  print(mhs2);
}
