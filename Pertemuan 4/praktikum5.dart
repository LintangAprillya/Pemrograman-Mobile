(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = (1, 2);
  print(tukar(record)); // Output: (2, 1)
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Lintang Aprillya Sari', 2241720231);
  print(mahasiswa);
}
