#

<p align="center"><img src="https://telkomuniversity.ac.id/wp-content/uploads/2019/03/Logo-Telkom-University-png-3430x1174.png" width="370" alt="Logo Telkom University"></p>
<p align="center"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="500" alt="Laravel Logo"></p>

# Kelompok 3 - SI-44-06

Repository ini dibuat bertujuan untuk memenuhi tugas besar mata kuliah Integrasi Aplikasi Enterprise

# Anggota Kelompok

| No  | Nama                                                                     | NIM        |
| --- | ------------------------------------------------------------------------ | ---------- |
| 1   | [Putu Wisnu Wirayuda Putra](https://www.instagram.com/puutuuu_)          | 1202200244 |
| 2   | [Dary Ramadhan Abdussalam](https://www.instagram.com/daryraa)            | 1202204205 |
| 3   | [Fithri Dwi Nur Azizah](https://www.instagram.com/fthrraz)               | 1202202109 |
| 4   | [Intania Fadya Safitri](https://www.instagram.com/intaniafdya_)          | 1202201312 |
| 5   | [Qorina Hazhiratul Qudsi Al Ayyubi](https://www.instagram.com/qorinaa.a) | 1202200090 |

<br>

# API Endpoints
Anda bisa menggunakan endpoint `api/flights` untuk mendapatkan data-data ticket penerbangan yang kami sediakan. Anda juga bisa menggunakan paramater opsional yang ada untuk mendapatkan data yang lebih spesifik.

<br>

## Contoh API Request: 
```
 https://flight-restful-api.com/api/flights
```
Mendapatkan data dengan **{id}** yang spesifik:
```
 https://flight-restful-api.com/api/flights/{id}
```
<br>

## Optional HTTP GET Request Parameters:
**Note:** Tidak dapat digunakan bersamaan dengan penggunaan endpoint **{id}**
| Object      | Description                                                                                                                                 |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `limit`     | Untuk membatasi jumlah data yang diterima. Contoh: `limit=10`                                                                               |
| `search`    | Untuk menampilkan data yang lebih spesifik, bisa digunakan untuk mencari data di semua kolom (kecuali ***id***). Contoh: `search=Batik Air` |
| `airline`   | Untuk menampilkan hanya data pada kolom `airline` saja. Parameter ini tidak memerlukan value.                                               |
| `departure` | Untuk menampilkan hanya data pada kolom `departure` saja. Parameter ini tidak memerlukan value.                                             |
| `arrival`   | Untuk menampilkan hanya data pada kolom `arrival` saja. Parameter ini tidak memerlukan value.                                               |
| `class`     | Untuk menampilkan hanya data pada kolom `class` saja. Parameter ini tidak memerlukan value.                                                 |
| `price`     | Untuk menampilkan hanya data pada kolom `price` saja. Parameter ini tidak memerlukan value.                                                 |
| `duration`  | Untuk menampilkan hanya data pada kolom `duration` saja. Parameter ini tidak memerlukan value.                                              |
| `scheduled` | Untuk menampilkan hanya data pada kolom `scheduled` saja. Parameter ini tidak memerlukan value.                                             |
| `estimated` | Untuk menampilkan hanya data pada kolom `estimated` saja. Parameter ini tidak memerlukan value.                                             |
| `date`      | Untuk menampilkan hanya data pada kolom `date` saja. Parameter ini tidak memerlukan value.                                                  |

<br>

## Contoh API Response:
```json
{
    "status": 200,
    "data": [
        {
            "id": 1,
            "airline": "Batik Air",
            "departure": "Polonia (KNO)",
            "arrival": "Soekarno-Hatta International (CGK)",
            "class": "Economy",
            "price": 1066864,
            "duration": "2h 20m",
            "scheduled": "2023-04-17T05:00:00+00:00",
            "estimated": "2023-04-17T07:20:00+00:00",
            "date": "2023-04-17",
            "created_at": "2023-04-16T15:28:52.000000Z",
            "updated_at": "2023-04-16T15:28:52.000000Z"
        },
        {
            "id": 2,
            "airline": "Batik Air",
            "departure": "Polonia (KNO)",
            "arrival": "Soekarno-Hatta International (CGK)",
            "class": "Business",
            "price": 1144094,
            "duration": "2h 20m",
            "scheduled": "2023-04-17T05:00:00+00:00",
            "estimated": "2023-04-17T07:20:00+00:00",
            "date": "2023-04-17",
            "created_at": "2023-04-16T15:28:52.000000Z",
            "updated_at": "2023-04-16T15:28:52.000000Z"
        }
    ]
}

```