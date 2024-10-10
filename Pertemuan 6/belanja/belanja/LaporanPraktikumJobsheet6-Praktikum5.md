# Pemrograman Mobile

---

Nama : Lintang Aprillya Sari Sari

Kelas : 3C / 13

NIM : 2241720231

---

## Jobsheet 6 : Layout dan Navigasi

### Praktikum 5 : Membangun Navigasi di Flutter

#### Apa yang akan Anda pelajari

    * Cara kerja mekanisme navigation dan route di Flutter.
    * Cara membuat navigation dan route di Flutter.

#### > Langkah 1 : Siapkan Project Baru

    Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

![Praktikum 5 - Langkah 1](./picture/js6_praktikum5_langkah1.png)

![Praktikum 5 - Langkah 1](<./picture/js6_praktikum5_langkah1(2).png>)

#### > Langkah 2 : Mendefinisikan Route

    Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.

![Praktikum 5 - Langkah 2](./picture/js6_praktikum5_langkah2.png)

home_page.dart

    import 'package:flutter/material.dart';
    import 'package:belanja/models/item.dart';

    class HomePage extends StatelessWidget {
    @override
        Widget build(BuildContext context) {
            //TODO: implement build
            throw UnimplementedError();
        }
    }

item_page.dart

    import 'package:flutter/material.dart';

    class ItemPage extends StatelessWidget {
        const ItemPage({super.key});
        @override
        Widget build(BuildContext context) {
            //TODO: implement build
            throw UnimplementedError();
        }
    }

#### > Langkah 3 : Lengkapi Kode di main.dart

Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

main.dart

    import 'package:flutter/material.dart';
    import 'package:belanja/pages/home_page.dart';
    import 'package:belanja/pages/item_page.dart';

    void main() {
        runApp(MaterialApp(
            initialRoute: '/',
            routes: {
                '/': (context) => HomePage(),
                '/item': (context) => const ItemPage(),
            },
        ));
    }

#### > Langkah 4 : Membuat Data Model

    Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

![Praktikum 5 - Langkah 4](./picture/js6_praktikum5_langkah4.png)

item.dart

    class Item {
        String name;
        int price;

        Item({required this.name, required this.price});
    }

#### > Langkah 5 : Lengkapi Kode di Class HomePage

    Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.

home_page.dart

    class HomePage extends StatelessWidget {
        final List<Item> items = [
            Item(name: 'Sugar', price: 5000),
            Item(name: 'Salt', price: 2000),
        ];
    }

#### > Langkah 6 : Membuat ListView dan itemBuilder

    Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.

home_page.dart

    class HomePage extends StatelessWidget {
        @override
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: const Text('Home Page'),
            ),
            body: Container(
                margin: const EdgeInsets.all(8),
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                        final item = items[index];
                        return Card(
                            child: Container(
                        margin: const EdgeInsets.all(8),
                            child: Row(
                            children: [
                        Expanded(child: Text(item.name)),
                                Expanded(
                                    child: Text(
                                    item.price.toString(),
                                textAlign: TextAlign.end,
                                    ),
                                ),
                            ],
                            ),
                            ),
                        );
                        },
                    ),
            ),
            );
        }
    }

![Praktikum 5 - Langkah 4](./picture/js6_praktikum5_langkah6.png)

#### > Langkah 7 : Menambahkan Aksi pada ListView

    Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell. Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

home_page.dart

    import 'package:flutter/material.dart';
    import 'package:belanja/models/item.dart';
    import 'package:belanja/pages/item_page.dart';

    class HomePage extends StatelessWidget {
        final List<Item> items = [
        Item(name: 'Sugar', price: 5000),
        Item(name: 'Salt', price: 2000),
    ];

    @override
        Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Home Page'),
        ),
        body: Container(
            margin: const EdgeInsets.all(8),
            child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                onTap: () {
                    Navigator.push(
                        context,
                    MaterialPageRoute(
                        builder: (context) => ItemPage(item: item), // Kirim item yang dipilih ke ItemPage
                    ),
                    );
                },
                child: Card(
                    child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                        children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                            child: Text(
                                item.price.toString(),
                            textAlign: TextAlign.end,
                            ),
                        ),
                        ],
                    ),
                    ),
                ),
                );
            },
            ),
        ),
        );
    }
    }

item_page.dart

    import 'package:flutter/material.dart';
    import 'package:belanja/models/item.dart';

    class ItemPage extends StatelessWidget {
    final Item item; // Menerima data item

    const ItemPage({super.key, required this.item});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
        title: Text(item.name), // Menampilkan nama item di AppBar
        ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          elevation: 5, // Memberikan efek bayangan pada card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Agar ukuran kolom menyesuaikan konten
              crossAxisAlignment: CrossAxisAlignment.center, // Posisikan di tengah
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center, // Teks di tengah
                ),
                const SizedBox(height: 16), // Jarak antar elemen
                Text(
                  'Price: \$${item.price}',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  child: const Text('Back'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    }
    }

main.dart

    import 'package:flutter/material.dart';
    import 'package:belanja/pages/home_page.dart';

    void main() {
        runApp(MaterialApp(
        initialRoute: '/',
        routes: {
            '/': (context) => HomePage(),
        },
        ));
    }

![Praktikum 5 - Langkah 4](./picture/js6_praktikum5_langkah7.png)

![Praktikum 5 - Langkah 4](<./picture/js6_praktikum5_langkah7(1).png>)

![Praktikum 5 - Langkah 4](<./picture/js6_praktikum5_langkah7(2).png>)

---

### Tugas Praktikum 2

---

#### 1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

#### 2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

#### 3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

#### 4. Silahkan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

#### 5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

#### 6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

main.dart
import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';

    void main() {
    //runApp(const MyApp());
    runApp(MaterialApp(
    initialRoute: '/',
    routes: {
    '/': (context) => HomePage(),
    '/item': (context) => const ItemPage(),
    },
    ));
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
    }
    }

    class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key, required this.title});

    // This widget is the home page of your application. It is stateful, meaning
    // that it has a State object (defined below) that contains fields that affect
    // how it looks.

    // This class is the configuration for the state. It holds the values (in this
    // case the title) provided by the parent (in this case the App widget) and
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".

    final String title;

    @override
    State<MyHomePage> createState() => \_MyHomePageState();
    }

    class \_MyHomePageState extends State<MyHomePage> {
    int \_counter = 0;

    void \_incrementCounter() {
    setState(() {
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below
    // so that the display can reflect the updated values. If we changed
    // \_counter without calling setState(), then the build method would not be
    // called again, and so nothing would appear to happen.
    \_counter++;
    });
    }

    @override
    Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the \_incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
    appBar: AppBar(
    // TRY THIS: Try changing the color here to a specific color (to
    // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    // change color while the other colors stay the same.
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text(widget.title),
    ),
    body: Center(
    // Center is a layout widget. It takes a single child and positions it
    // in the middle of the parent.
    child: Column(
    // Column is also a layout widget. It takes a list of children and
    // arranges them vertically. By default, it sizes itself to fit its
    // children horizontally, and tries to be as tall as its parent.
    //
    // Column has various properties to control how it sizes itself and
    // how it positions its children. Here we use mainAxisAlignment to
    // center the children vertically; the main axis here is the vertical
    // axis because Columns are vertical (the cross axis would be
    // horizontal).
    //
    // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
    // action in the IDE, or press "p" in the console), to see the
    // wireframe for each widget.
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    const Text(
    'You have pushed the button this many times:',
    ),
    Text(
    '$_counter',
    style: Theme.of(context).textTheme.headlineMedium,
    ),
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: \_incrementCounter,
    tooltip: 'Increment',
    child: const Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    }
    }

widget_test.dart
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

    import 'package:flutter/material.dart';
    import 'package:flutter_test/flutter_test.dart';

    import 'package:belanja/main.dart';

    void main() {
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

        // Verify that our counter starts at 0.
        expect(find.text('0'), findsOneWidget);
        expect(find.text('1'), findsNothing);

        // Tap the '+' icon and trigger a frame.
        await tester.tap(find.byIcon(Icons.add));
        await tester.pump();

        // Verify that our counter has incremented.
        expect(find.text('0'), findsNothing);
        expect(find.text('1'), findsOneWidget);

    });
    }

    item.dart
    class Item {
    String name;
    int price;
    String img;
    int stock;
    int rating;
    String author;
    String ukuran;
    String update;

    Item({
    required this.name,
    required this.price,
    required this.img,
    required this.stock,
    required this.rating,
    required this.author,
    required this.ukuran,
    required this.update,
    });
    }

    item_page.dart
    import 'package:flutter/material.dart';
    import 'package:belanja/models/item.dart';

    class ItemPage extends StatelessWidget {
    const ItemPage({super.key});

    @override
    Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

        return Scaffold(
        appBar: AppBar(
            title: Text(item.name),
            backgroundColor: const Color.fromARGB(255, 228, 124, 179),
        ),
        body: GestureDetector(
            onTap: () {
            Navigator.pop(context);
            },
            child: SingleChildScrollView(
            // Tambahkan SingleChildScrollView agar bisa di scroll
            child: Card(
                child: Column(
                children: [
                    Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        SizedBox(
                            width: 200,
                            child: Column(
                            children: [
                                Align(
                                alignment: Alignment.centerLeft,
                                child: Hero(
                                    tag: item.img.toString(),
                                    child: Image.asset(
                                    item.img.toString(),
                                    width: 200,
                                    height: 300,
                                    ),
                                ),
                                ),
                            ],
                            ),
                        ),
                        Flexible(
                            child: Container(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(
                                    item.name,
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color:
                                        const Color.fromARGB(255, 228, 124, 179),
                                    ),
                                    textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 30),
                                Text(item.author),
                                const SizedBox(height: 5),
                                Text(item.update),
                                const SizedBox(height: 5),
                                // Text('${item.pages} pages'),
                                // const SizedBox(height: 30),
                                Row(
                                    children: [
                                    const Text('Stok : '),
                                    Text(item.stock.toString()),
                                    ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                    children: [
                                    for (int i = 0; i < 5; i++)
                                        (i < item.rating)
                                            ? const Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.amber,
                                            )
                                            : const Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.black,
                                            ),
                                    const Padding(padding: EdgeInsets.all(3.0)),
                                    Text(item.rating.toString()),
                                    ],
                                ),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                    onPressed: () {
                                    Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 228, 124, 179), // Warna tombol
                                    ),
                                    child: Text(
                                    'Purchase for Rp${item.price}',
                                    style: const TextStyle(
                                        color: Colors
                                            .white, // Warna teks menjadi putih
                                    ),
                                    ),
                                ),
                                ],
                            ),
                            ),
                        ),
                        ],
                    ),
                    ),
                ],
                ),
            ),
            ),
        ),
        );

    }
    }

main.dart
import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';

    void main() {
    //runApp(const MyApp());
    runApp(MaterialApp(
    initialRoute: '/',
    routes: {
    '/': (context) => HomePage(),
    '/item': (context) => const ItemPage(),
    },
    ));
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
    }
    }

    class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key, required this.title});

    // This widget is the home page of your application. It is stateful, meaning
    // that it has a State object (defined below) that contains fields that affect
    // how it looks.

    // This class is the configuration for the state. It holds the values (in this
    // case the title) provided by the parent (in this case the App widget) and
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".

    final String title;

    @override
    State<MyHomePage> createState() => \_MyHomePageState();
    }

    class \_MyHomePageState extends State<MyHomePage> {
    int \_counter = 0;

    void \_incrementCounter() {
    setState(() {
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below
    // so that the display can reflect the updated values. If we changed
    // \_counter without calling setState(), then the build method would not be
    // called again, and so nothing would appear to happen.
    \_counter++;
    });
    }

    @override
    Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the \_incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
    appBar: AppBar(
    // TRY THIS: Try changing the color here to a specific color (to
    // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
    // change color while the other colors stay the same.
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text(widget.title),
    ),
    body: Center(
    // Center is a layout widget. It takes a single child and positions it
    // in the middle of the parent.
    child: Column(
    // Column is also a layout widget. It takes a list of children and
    // arranges them vertically. By default, it sizes itself to fit its
    // children horizontally, and tries to be as tall as its parent.
    //
    // Column has various properties to control how it sizes itself and
    // how it positions its children. Here we use mainAxisAlignment to
    // center the children vertically; the main axis here is the vertical
    // axis because Columns are vertical (the cross axis would be
    // horizontal).
    //
    // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
    // action in the IDE, or press "p" in the console), to see the
    // wireframe for each widget.
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    const Text(
    'You have pushed the button this many times:',
    ),
    Text(
    '$_counter',
    style: Theme.of(context).textTheme.headlineMedium,
    ),
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: \_incrementCounter,
    tooltip: 'Increment',
    child: const Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    }
    }

<video width="320" height="240" controls>
  <source src="./picture/video.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

output :

![Alt Text](./picture/video.gif)
