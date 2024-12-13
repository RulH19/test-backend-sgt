# Persiapan Sebelum Menjalankan Project

1. Melakukan Clonning Git Repo

- git clone linkRepo

2. Melakukan konfigurasi node js dan express js

- npm init
- npm install express nodemon
- npm add mysql2
- npm add dotenv
- npm install validator

3. Membuat database di MYSQL dengan nama express_mysql
4. Membuat table didalam database yang sudah dibuat

- Books
  ![Struktur Table Books](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Struktur-Books.png?raw=true)
- Borrowings
  ![Struktur Table Borrowings](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Struktur-Borrowing.png?raw=true)
- Members
  ![Struktur Table Members](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Struktur-Member.png?raw=true)

5. Membuat file .env dengan struktur berikut :
   ![App Screenshot](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/setting-env.png?raw=true)
   Sesuaikan konfigurasi database dengan konfigurasi pada mysql
6. Mengganti Script pada package.json
   ` "scripts": {
    "start": "nodemon src/app.js"
  },`

# Dokumentasi API

## Get all books

```http
  GET http://localhost:4000/api/books
```

![Get All Books](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Get-All-Book.png?raw=true)

## Get Book

```http
  GET http://localhost:4000/api/books?title=xxx&author=xxx
```

| Parameter | Type     | Description   |
| :-------- | :------- | :------------ |
| `title`   | `String` | `title buku`  |
| `author`  | `String` | `author buku` |

![Get Book](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Get-Author-Book.png?raw=true)
![Get Book](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Get-Title-Book.png?raw=true)

## POST Member

```http
  POST http://localhost:4000/api/members
```

| Parameter | Type     | Description       |
| :-------- | :------- | :---------------- |
| `name`    | `String` | `name members`    |
| `email`   | `String` | `email members`   |
| `phone`   | `String` | `phone members`   |
| `address` | `String` | `address members` |

### Kondisi Post Member

1 Valid post
![Valid post](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Success-Add-Member.png?raw=true) 2. Terdapat Field Kosong
![Terdapat Field Kosong](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Field-Ada-Kosong.png?raw=true) 3. Format Phone Tidak Sesuai
![Format Phone Tidak Sesuai](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Format-Phone-Invalid.png?raw=true) 4. Format Email Tidak Sesuai
![Format Email Tidak Sesuai](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Format-Email-Invalid.png?raw=true)

#### POST borrowing

```http
  POST http://localhost:4000/api/borrowings
```

| Parameter   | Type     | Description  |
| :---------- | :------- | :----------- |
| `book_id`   | `String` | `id buku`    |
| `member_id` | `String` | `id members` |

### Kondisi Post Borrowings

1 Jika Stok Buku > 0 dan Peminjam meminjam < 3
![Jika Stok Buku > 0 dan Peminjam meminjam < 3](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Success-Borrowing.png?raw=true) 2. Jika Stok Buku == 0 / tidak tersedia
![Jika Stok Buku == 0 / tidak tersedia](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Stok-Buku-Kosong.png?raw=true) 3. Jika Peminjam Meminjam > 3
![Jika Peminjam Meminjam > 3](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Member-Borrow-3.png?raw=true)

#### PUT borrowing

```http
  POST http://localhost:4000/api/borrowings/:id/return
```

![Mengembalikan Buku](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Melakukan-Return.png?raw=true)

#### Perubahan stok dan status

- Sebelum di return
  ![Sebelum di return ](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Sebelum-Return-Status.png?raw=true)
  ![Sebelum di return ](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Sebelum-Return-Stok.png?raw=true)
- Sesudah di Return
  ![Sesudah di Return](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Setelah-Return-Status.png?raw=true)
  ![Sesudah di Return](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Setelah-Return-Stok.png?raw=true)

## Get History Member
```http
  GET http://localhost:4000/api/members/:id/borrowings
```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
|  `status`  | `String` | `BORROWED / RETURNED      |

![Get Book](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/All-Status.png?raw=true)
![Get Book](https://github.com/RulH19/test-backend-sgt/blob/main/image_asset_dokumentasi/Status-Returned.png?raw=true)
