## Tutorial 2

Apa saja pesan log yang dicetak pada panel Output?
- `Platform initialized` ketika pertama kali play scene

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
- `Reached objective!`

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
- Ya, ketika pesawat player menyentuh ObjectiveArea barulah memunculkan pesan log `Reached objective!`

Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
- Memberikan tampilan visual dari BlueShip dan StonePlatform

Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
- Rigidbody2D -> gerakan objek dipengaruhi physics, dikenakan gravitasi dan dorongan dari objek lain
- Static2D -> objek memiliki physics diam, tidak menerima collision dari objek lain

Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
- Nilai Mass akan selalu proposional dengan Weight, begitu juga sebaliknya. Namuun apabila dijalankan tidak terasa perbedaan karena kita mendorong dengan objek static

Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
- Blueship akan jatuh menembus platform. Hal ini terjadi karena node CollisionShape2D mendefinisikan shape/bentuk dari paltform. Apabila atribut Disabled diubah jadi Off, maka platform tidak mengetahui bentuk collisionnya.

Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
- Position akan mengubah posisi dari BlueShip
- Rotation akan membuat arah BlueShip menjadi miring
- Scale akan mengubah ukuran Blueship menjadi besar/kecil

Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
- Karena position node di Godot bersifat inherit, dimana atribut position dari child node (StonePlatform dan StonePlatform2) merupakan posisi relatif terhadap node parentnya (PlatformBlue)