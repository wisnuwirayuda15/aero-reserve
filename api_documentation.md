
# ✈️ Flight-API Documetation 🌍

[GitHub repository](https://github.com/wisnuwirayuda15/flight-restful-api)

Dokumentasi ini menjelaskan bagaimana cara mengakses data ticket penerbangan pada layanan kami yaitu **Flight-API**. Kami menyediakan berbagai macam data ticket penerbangan yang bisa anda gunakan untuk kebutuhan atau aplikasi anda.

# Getting Started

### API Key

Untuk menggunakan layanan kami, anda membutuhkan API Key. API Key bisa anda dapatkan dengan mendaftarkan akun pada layanan kami. Klik disini untuk ke cara registrasi.

Untuk menggunakan API Key, anda cukup memberikan parameter `api_key` dengan value sesuai API Key yang anda dapatkan setelah registrasi dan login pada semua endpoint yang valid dan dapat diakses.

<!--- If we have only one group/collection, then no need for the "ungrouped" heading -->


## Variables

| Key | Value | Type |
| --- | ------|-------------|
| base_url | http://flight-api.test | string |



## Endpoints

- [✈️ Flight-API Documetation 🌍](#️-flight-api-documetation-)
- [Getting Started](#getting-started)
    - [API Key](#api-key)
  - [Variables](#variables)
  - [Endpoints](#endpoints)
  - [Flight Tickets](#flight-tickets)
    - [1. Flight Tickets](#1-flight-tickets)
      - [I. Example Request: Tanpa parameter opsional](#i-example-request-tanpa-parameter-opsional)
      - [I. Example Response: Tanpa parameter opsional](#i-example-response-tanpa-parameter-opsional)
      - [II. Example Request: id](#ii-example-request-id)
      - [II. Example Response: id](#ii-example-response-id)
      - [III. Example Request: search](#iii-example-request-search)
      - [III. Example Response: search](#iii-example-response-search)
      - [IV. Example Request: select\_only](#iv-example-request-select_only)
      - [IV. Example Response: select\_only](#iv-example-response-select_only)
      - [V. Example Request: class](#v-example-request-class)
      - [V. Example Response: class](#v-example-response-class)
      - [VI. Example Request: sort\_by](#vi-example-request-sort_by)
      - [VI. Example Response: sort\_by](#vi-example-response-sort_by)
      - [VII. Example Request: price](#vii-example-request-price)
      - [VII. Example Response: price](#vii-example-response-price)
      - [VIII. Example Request: limit](#viii-example-request-limit)
      - [VIII. Example Response: limit](#viii-example-response-limit)
      - [IX. Example Request: paginate](#ix-example-request-paginate)
      - [IX. Example Response: paginate](#ix-example-response-paginate)
      - [X. Example Request: paginate with page](#x-example-request-paginate-with-page)
      - [X. Example Response: paginate with page](#x-example-response-paginate-with-page)
  - [User](#user)
    - [1. Register](#1-register)
      - [I. Example Request: Registrasi berhasil](#i-example-request-registrasi-berhasil)
      - [I. Example Response: Registrasi berhasil](#i-example-response-registrasi-berhasil)
      - [II. Example Request: Registrasi gagal](#ii-example-request-registrasi-gagal)
      - [II. Example Response: Registrasi gagal](#ii-example-response-registrasi-gagal)
    - [2. Login](#2-login)
      - [I. Example Request: Login berhasil](#i-example-request-login-berhasil)
      - [I. Example Response: Login berhasil](#i-example-response-login-berhasil)
      - [II. Example Request: Login gagal](#ii-example-request-login-gagal)
      - [II. Example Response: Login gagal](#ii-example-response-login-gagal)
    - [3. API Key Reset](#3-api-key-reset)
      - [I. Example Request: Reset key berhasil](#i-example-request-reset-key-berhasil)
      - [I. Example Response: Reset key berhasil](#i-example-response-reset-key-berhasil)
      - [II. Example Request: Reset key gagal](#ii-example-request-reset-key-gagal)
      - [II. Example Response: Reset key gagal](#ii-example-response-reset-key-gagal)

--------



## Flight Tickets



### 1. Flight Tickets


Endpoint `/api/flights` digunakan untuk mendapatkan data-data tiket penerbangan yang tersedia. Gunakan parameter yang tersedia untuk memilih data yang lebih spesifik. Berikut parameter yang tersedia:

| **Parameter** | **Description** | **Example** |
| --- | --- | --- |
| `api_key` | **\[Required\]** API Key bisa anda dapatkan setelah melakukan registrasi | `api_key={{$randomBitcoin}}` |
| `id` | **\[Optional\]** Mencari data berdasarkan id. Disarankan untuk tidak menggunakan parameter opsional lain jika anda menggunakan parameter ini. | `id=5` |
| `search` | **\[Optional\]** Mencari data sesuai kata kunci yang diinginkan | `search=China` |
| `select_only` | **\[Optional\]** Menampilkan data hanya pada kolom tertentu. Kolom yang tersedia: `id`, `airline`, `departure`, `arrival`, `class`, `price`, `duration`, `scheduled`, `estimated`, `date`, `created_at`, `updated_at`. Gunakan tanda koma `(,)` jika anda ingin memilih lebih dari satu kolom. | `select_only=airline select_only=airline,departure,arrival` |
| `class` | **\[Optional\]** Mencari data berdasarkan class. Class yang tersedia: `Economy`, `Business`, `First Class`, `Premium Economy` | `class=Economy` |
| `sort_by` | **\[Optional\]** Mengurutkan data berdasarkan kolom tertentu. Anda harus memberikan dua value yang harus dipisahkan dengan tanda titik `(.)`.Value pertama berupa nama kolom dan value kedua berupa jenis urutannya, yaitu `asc` atau `desc.` | `sort_by=airline.asc`  <br>  <br>`sort_by=price.desc` |
| `price` | **\[Optional\]** Mencari data berdasarkan harga tiket. Anda harus memberikan dua value yang harus dipisahkan dengan tanda titik `(.)`.Value pertama berupa symbol lebih besar `(>)` atau lebih kecil `(<)`dan value kedua berupa harga dalam bentuk integer. | `price=>.1000000`  <br>  <br>`price=<.5000000` |
| `limit` | **\[Optional\]** Membatasi data didapatkan sesuai keinginan. Value defaultnya adalah `10`. Jika anda ingin mengambil semua data yang ada, anda hanya perlu memberikan value `0` untuk parameter ini. Tidak disarankan untuk mengambil semua data tanpa limit tertentu untuk menghindari penggunaan bandwidth yang terlalu besar. | `limit=50` |
| `paginate` | **\[Optional\]** Mendapatkan data dalam paginasi. Anda perlu memberikan parameter tambahan `page` untuk mengakses halaman lain dari paginasi. | `paginate=10&page=2` |


***Endpoint:***

```bash
Method: GET
Type: 
URL: http://flight-api.test/api/flights
```



***More example Requests/Responses:***


#### I. Example Request: Tanpa parameter opsional



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |



***Body: None***



#### I. Example Response: Tanpa parameter opsional
```js
{
    "status": 200,
    "properties": {
        "count": 10,
        "total": 100
    },
    "data": [
        {
            "id": 1,
            "airline": "flydubai (FZ776)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "class": "Business",
            "price": 7908000,
            "duration": "2h 10m",
            "scheduled": "2023-06-02T02:00:00+00:00",
            "estimated": "2023-06-02T04:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 2,
            "airline": "Emirates (EK2477)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "class": "Economy",
            "price": 5826000,
            "duration": "2h 10m",
            "scheduled": "2023-06-02T02:00:00+00:00",
            "estimated": "2023-06-02T04:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 3,
            "airline": "Ural Airlines (U62514)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Kazan (KZN)",
            "class": "Premium Economy",
            "price": 4974000,
            "duration": "0h 45m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T02:15:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 4,
            "airline": "Longhao Airlines (GI4223)",
            "departure": "Yantai (YNT)",
            "arrival": "Noibai International (HAN)",
            "class": "First Class",
            "price": 5071000,
            "duration": "2h 50m",
            "scheduled": "2023-06-02T00:10:00+00:00",
            "estimated": "2023-06-02T03:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 5,
            "airline": "China Eastern Airlines (MU7333)",
            "departure": "Shanghai Pudong International (PVG)",
            "arrival": "Noibai International (HAN)",
            "class": "Business",
            "price": 9513000,
            "duration": "2h 30m",
            "scheduled": "2023-06-02T00:10:00+00:00",
            "estimated": "2023-06-02T02:40:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 6,
            "airline": "SF Airlines (O37222)",
            "departure": "Noibai International (HAN)",
            "arrival": "Tianhe International (WUH)",
            "class": "Economy",
            "price": 9268000,
            "duration": "3h 15m",
            "scheduled": "2023-06-02T02:40:00+00:00",
            "estimated": "2023-06-02T05:55:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 7,
            "airline": "Bamboo Airways (QH450)",
            "departure": "Noibai International (HAN)",
            "arrival": "Seoul (Incheon) (ICN)",
            "class": "Business",
            "price": 7290000,
            "duration": "6h 20m",
            "scheduled": "2023-06-02T02:15:00+00:00",
            "estimated": "2023-06-02T08:35:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 8,
            "airline": "Gulf Air (GF5409)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "class": "Economy",
            "price": 3438000,
            "duration": "3h 35m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T05:05:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 9,
            "airline": "Air Canada (AC7605)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "class": "Business",
            "price": 1647000,
            "duration": "3h 35m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T05:05:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 10,
            "airline": "Sichuan Airlines (3U3719)",
            "departure": " (NTG)",
            "arrival": "Kuala Lumpur International Airport (klia) (KUL)",
            "class": "Business",
            "price": 2603000,
            "duration": "5h 20m",
            "scheduled": "2023-06-02T02:05:00+00:00",
            "estimated": "2023-06-02T07:25:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### II. Example Request: id



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| id | 5 |  |



***Body: None***



#### II. Example Response: id
```js
{
    "status": 200,
    "properties": {
        "count": 1,
        "total": 100
    },
    "data": [
        {
            "id": 5,
            "airline": "China Eastern Airlines (MU7333)",
            "departure": "Shanghai Pudong International (PVG)",
            "arrival": "Noibai International (HAN)",
            "class": "Business",
            "price": 9513000,
            "duration": "2h 30m",
            "scheduled": "2023-06-02T00:10:00+00:00",
            "estimated": "2023-06-02T02:40:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### III. Example Request: search



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| search | China |  |



***Body: None***



#### III. Example Response: search
```js
{
    "status": 200,
    "properties": {
        "count": 6,
        "total": 100
    },
    "data": [
        {
            "id": 5,
            "airline": "China Eastern Airlines (MU7333)",
            "departure": "Shanghai Pudong International (PVG)",
            "arrival": "Noibai International (HAN)",
            "class": "Business",
            "price": 9513000,
            "duration": "2h 30m",
            "scheduled": "2023-06-02T00:10:00+00:00",
            "estimated": "2023-06-02T02:40:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 36,
            "airline": "China Airlines (CI5836)",
            "departure": "Hong Kong International (HKG)",
            "arrival": "Taiwan Taoyuan International (Chiang Kai Shek International) (TPE)",
            "class": "Premium Economy",
            "price": 6415000,
            "duration": "1h 35m",
            "scheduled": "2023-06-02T02:55:00+00:00",
            "estimated": "2023-06-02T04:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 50,
            "airline": "China Postal Airlines (CF219)",
            "departure": "Kunming (KMG)",
            "arrival": "Suvarnabhumi International (BKK)",
            "class": "Premium Economy",
            "price": 9344000,
            "duration": "1h 15m",
            "scheduled": "2023-06-02T02:10:00+00:00",
            "estimated": "2023-06-02T03:25:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 85,
            "airline": "China Postal Airlines (CF9001)",
            "departure": "Lanzhou Zhongchuan Airport (LHW)",
            "arrival": "Nanjing Lukou International Airport (NKG)",
            "class": "Economy",
            "price": 9314000,
            "duration": "2h 30m",
            "scheduled": "2023-06-02T00:05:00+00:00",
            "estimated": "2023-06-02T02:35:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 93,
            "airline": "China Eastern Airlines (MU4344)",
            "departure": "Wellington International (WLG)",
            "arrival": "Sydney Kingsford Smith Airport (SYD)",
            "class": "Business",
            "price": 9323000,
            "duration": "1h 45m",
            "scheduled": "2023-06-02T06:00:00+00:00",
            "estimated": "2023-06-02T07:45:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 95,
            "airline": "China Postal Airlines (CF221)",
            "departure": "Zhengzhou (CGO)",
            "arrival": "Seoul (Incheon) (ICN)",
            "class": "First Class",
            "price": 3822000,
            "duration": "3h 40m",
            "scheduled": "2023-06-02T01:15:00+00:00",
            "estimated": "2023-06-02T04:55:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### IV. Example Request: select_only



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| select_only | airline,departure,arrival,date |  |



***Body: None***



#### IV. Example Response: select_only
```js
{
    "status": 200,
    "properties": {
        "count": 10,
        "total": 100
    },
    "data": [
        {
            "airline": "flydubai (FZ776)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "date": "2023-06-02"
        },
        {
            "airline": "Emirates (EK2477)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "date": "2023-06-02"
        },
        {
            "airline": "Ural Airlines (U62514)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Kazan (KZN)",
            "date": "2023-06-02"
        },
        {
            "airline": "Longhao Airlines (GI4223)",
            "departure": "Yantai (YNT)",
            "arrival": "Noibai International (HAN)",
            "date": "2023-06-02"
        },
        {
            "airline": "China Eastern Airlines (MU7333)",
            "departure": "Shanghai Pudong International (PVG)",
            "arrival": "Noibai International (HAN)",
            "date": "2023-06-02"
        },
        {
            "airline": "SF Airlines (O37222)",
            "departure": "Noibai International (HAN)",
            "arrival": "Tianhe International (WUH)",
            "date": "2023-06-02"
        },
        {
            "airline": "Bamboo Airways (QH450)",
            "departure": "Noibai International (HAN)",
            "arrival": "Seoul (Incheon) (ICN)",
            "date": "2023-06-02"
        },
        {
            "airline": "Gulf Air (GF5409)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "date": "2023-06-02"
        },
        {
            "airline": "Air Canada (AC7605)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "date": "2023-06-02"
        },
        {
            "airline": "Sichuan Airlines (3U3719)",
            "departure": " (NTG)",
            "arrival": "Kuala Lumpur International Airport (klia) (KUL)",
            "date": "2023-06-02"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### V. Example Request: class



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| class | Economy |  |



***Body: None***



#### V. Example Response: class
```js
{
    "status": 200,
    "properties": {
        "count": 10,
        "total": 100
    },
    "data": [
        {
            "id": 2,
            "airline": "Emirates (EK2477)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "class": "Economy",
            "price": 5826000,
            "duration": "2h 10m",
            "scheduled": "2023-06-02T02:00:00+00:00",
            "estimated": "2023-06-02T04:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 6,
            "airline": "SF Airlines (O37222)",
            "departure": "Noibai International (HAN)",
            "arrival": "Tianhe International (WUH)",
            "class": "Economy",
            "price": 9268000,
            "duration": "3h 15m",
            "scheduled": "2023-06-02T02:40:00+00:00",
            "estimated": "2023-06-02T05:55:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 8,
            "airline": "Gulf Air (GF5409)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "class": "Economy",
            "price": 3438000,
            "duration": "3h 35m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T05:05:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 11,
            "airline": "Jet Linx Aviation (JL5018)",
            "departure": "Noibai International (HAN)",
            "arrival": "Kansai International (KIX)",
            "class": "Economy",
            "price": 8832000,
            "duration": "6h 30m",
            "scheduled": "2023-06-02T01:20:00+00:00",
            "estimated": "2023-06-02T07:50:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 14,
            "airline": "FlexFlight (W24982)",
            "departure": "Noibai International (HAN)",
            "arrival": "Gimhae (PUS)",
            "class": "Economy",
            "price": 8850000,
            "duration": "6h 0m",
            "scheduled": "2023-06-02T01:00:00+00:00",
            "estimated": "2023-06-02T07:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 15,
            "airline": "FlexFlight (W24920)",
            "departure": "Noibai International (HAN)",
            "arrival": "Chu-Bu Centrair International (Central Japan International) (NGO)",
            "class": "Economy",
            "price": 6351000,
            "duration": "7h 5m",
            "scheduled": "2023-06-02T00:55:00+00:00",
            "estimated": "2023-06-02T08:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 17,
            "airline": " (A12938)",
            "departure": "Noibai International (HAN)",
            "arrival": "Kansai International (KIX)",
            "class": "Economy",
            "price": 5060000,
            "duration": "6h 30m",
            "scheduled": "2023-06-02T01:20:00+00:00",
            "estimated": "2023-06-02T07:50:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 18,
            "airline": "ANA (NH9722)",
            "departure": "Noibai International (HAN)",
            "arrival": "Fukuoka (FUK)",
            "class": "Economy",
            "price": 6016000,
            "duration": "6h 15m",
            "scheduled": "2023-06-02T01:15:00+00:00",
            "estimated": "2023-06-02T07:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 24,
            "airline": "Qantas (QF8475)",
            "departure": "Nelson (NSN)",
            "arrival": "Auckland International (AKL)",
            "class": "Economy",
            "price": 7416000,
            "duration": "1h 30m",
            "scheduled": "2023-06-02T06:00:00+00:00",
            "estimated": "2023-06-02T07:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 26,
            "airline": "Central Airlines (I99805)",
            "departure": "Fuzhou (FOC)",
            "arrival": "Ninoy Aquino International (MNL)",
            "class": "Economy",
            "price": 5029000,
            "duration": "2h 55m",
            "scheduled": "2023-06-02T00:05:00+00:00",
            "estimated": "2023-06-02T03:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### VI. Example Request: sort_by



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| sort_by | airline.desc |  |



***Body: None***



#### VI. Example Response: sort_by
```js
{
    "status": 200,
    "properties": {
        "count": 10,
        "total": 100
    },
    "data": [
        {
            "id": 48,
            "airline": "YTO Cargo Airlines (YG9129)",
            "departure": "Kunming (KMG)",
            "arrival": "Madras International (Meenambakkam) (MAA)",
            "class": "First Class",
            "price": 9466000,
            "duration": "1h 30m",
            "scheduled": "2023-06-02T02:30:00+00:00",
            "estimated": "2023-06-02T04:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 28,
            "airline": "YTO Cargo Airlines (YG9121)",
            "departure": "Xianyang (XIY)",
            "arrival": "Suvarnabhumi International (BKK)",
            "class": "First Class",
            "price": 2918000,
            "duration": "4h 20m",
            "scheduled": "2023-06-02T02:10:00+00:00",
            "estimated": "2023-06-02T06:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 51,
            "airline": "YTO Cargo Airlines (YG9103)",
            "departure": "Kunming (KMG)",
            "arrival": "Chhatrapati Shivaji International (Sahar International) (BOM)",
            "class": "Business",
            "price": 3690000,
            "duration": "1h 5m",
            "scheduled": "2023-06-02T02:10:00+00:00",
            "estimated": "2023-06-02T03:15:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 52,
            "airline": "YTO Cargo Airlines (YG9067)",
            "departure": "Kunming (KMG)",
            "arrival": "Quaid-e-azam International (KHI)",
            "class": "Economy",
            "price": 2104000,
            "duration": "1h 0m",
            "scheduled": "2023-06-02T02:10:00+00:00",
            "estimated": "2023-06-02T03:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 29,
            "airline": "YTO Cargo Airlines (YG9061)",
            "departure": "Xianyang (XIY)",
            "arrival": "Seoul (Incheon) (ICN)",
            "class": "Business",
            "price": 8938000,
            "duration": "4h 10m",
            "scheduled": "2023-06-02T02:10:00+00:00",
            "estimated": "2023-06-02T06:20:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 27,
            "airline": "YTO Cargo Airlines (YG9041)",
            "departure": "Xianyang (XIY)",
            "arrival": "Phuket International (HKT)",
            "class": "Premium Economy",
            "price": 3572000,
            "duration": "4h 15m",
            "scheduled": "2023-06-02T02:15:00+00:00",
            "estimated": "2023-06-02T06:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 49,
            "airline": "VietJet Air (VJ5325)",
            "departure": "Kunming (KMG)",
            "arrival": "Cam Ranh (CXR)",
            "class": "Premium Economy",
            "price": 5819000,
            "duration": "1h 55m",
            "scheduled": "2023-06-02T02:30:00+00:00",
            "estimated": "2023-06-02T04:25:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 3,
            "airline": "Ural Airlines (U62514)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Kazan (KZN)",
            "class": "Premium Economy",
            "price": 4974000,
            "duration": "0h 45m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T02:15:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 96,
            "airline": "Tianjin Air Cargo (HT3815)",
            "departure": "Weihai (WEH)",
            "arrival": "Seoul (Incheon) (ICN)",
            "class": "First Class",
            "price": 6392000,
            "duration": "1h 50m",
            "scheduled": "2023-06-02T03:05:00+00:00",
            "estimated": "2023-06-02T04:55:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 73,
            "airline": "Thai Airways International (TG326)",
            "departure": "Bangalore International Airport (BLR)",
            "arrival": "Suvarnabhumi International (BKK)",
            "class": "First Class",
            "price": 3355000,
            "duration": "5h 25m",
            "scheduled": "2023-06-02T00:30:00+00:00",
            "estimated": "2023-06-02T05:55:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### VII. Example Request: price



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| price | <.5000000 |  |



***Body: None***



#### VII. Example Response: price
```js
{
    "status": 200,
    "properties": {
        "count": 10,
        "total": 100
    },
    "data": [
        {
            "id": 3,
            "airline": "Ural Airlines (U62514)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Kazan (KZN)",
            "class": "Premium Economy",
            "price": 4974000,
            "duration": "0h 45m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T02:15:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 8,
            "airline": "Gulf Air (GF5409)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "class": "Economy",
            "price": 3438000,
            "duration": "3h 35m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T05:05:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 9,
            "airline": "Air Canada (AC7605)",
            "departure": "Noibai International (HAN)",
            "arrival": "Dubai (DXB)",
            "class": "Business",
            "price": 1647000,
            "duration": "3h 35m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T05:05:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 10,
            "airline": "Sichuan Airlines (3U3719)",
            "departure": " (NTG)",
            "arrival": "Kuala Lumpur International Airport (klia) (KUL)",
            "class": "Business",
            "price": 2603000,
            "duration": "5h 20m",
            "scheduled": "2023-06-02T02:05:00+00:00",
            "estimated": "2023-06-02T07:25:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 12,
            "airline": "FlexFlight (W24938)",
            "departure": "Noibai International (HAN)",
            "arrival": "Kansai International (KIX)",
            "class": "Business",
            "price": 2647000,
            "duration": "6h 30m",
            "scheduled": "2023-06-02T01:20:00+00:00",
            "estimated": "2023-06-02T07:50:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 19,
            "airline": " (H14189)",
            "departure": "Noibai International (HAN)",
            "arrival": "Gimhae (PUS)",
            "class": "First Class",
            "price": 3641000,
            "duration": "6h 0m",
            "scheduled": "2023-06-02T01:00:00+00:00",
            "estimated": "2023-06-02T07:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 25,
            "airline": "Sounds Air (S8900)",
            "departure": "Westport (WSZ)",
            "arrival": "Wellington International (WLG)",
            "class": "Premium Economy",
            "price": 2900000,
            "duration": "0h 50m",
            "scheduled": "2023-06-02T06:10:00+00:00",
            "estimated": "2023-06-02T07:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 27,
            "airline": "YTO Cargo Airlines (YG9041)",
            "departure": "Xianyang (XIY)",
            "arrival": "Phuket International (HKT)",
            "class": "Premium Economy",
            "price": 3572000,
            "duration": "4h 15m",
            "scheduled": "2023-06-02T02:15:00+00:00",
            "estimated": "2023-06-02T06:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 28,
            "airline": "YTO Cargo Airlines (YG9121)",
            "departure": "Xianyang (XIY)",
            "arrival": "Suvarnabhumi International (BKK)",
            "class": "First Class",
            "price": 2918000,
            "duration": "4h 20m",
            "scheduled": "2023-06-02T02:10:00+00:00",
            "estimated": "2023-06-02T06:30:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 30,
            "airline": "SF Airlines (O36844)",
            "departure": "Jinjiang (JJN)",
            "arrival": "Yantai (YNT)",
            "class": "First Class",
            "price": 4195000,
            "duration": "2h 40m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T04:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### VIII. Example Request: limit



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| limit | 5 |  |



***Body: None***



#### VIII. Example Response: limit
```js
{
    "status": 200,
    "properties": {
        "count": 5,
        "total": 100
    },
    "data": [
        {
            "id": 1,
            "airline": "flydubai (FZ776)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "class": "Business",
            "price": 7908000,
            "duration": "2h 10m",
            "scheduled": "2023-06-02T02:00:00+00:00",
            "estimated": "2023-06-02T04:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 2,
            "airline": "Emirates (EK2477)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Dubai (DXB)",
            "class": "Economy",
            "price": 5826000,
            "duration": "2h 10m",
            "scheduled": "2023-06-02T02:00:00+00:00",
            "estimated": "2023-06-02T04:10:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 3,
            "airline": "Ural Airlines (U62514)",
            "departure": "Osh International Airport (OSS)",
            "arrival": "Kazan (KZN)",
            "class": "Premium Economy",
            "price": 4974000,
            "duration": "0h 45m",
            "scheduled": "2023-06-02T01:30:00+00:00",
            "estimated": "2023-06-02T02:15:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 4,
            "airline": "Longhao Airlines (GI4223)",
            "departure": "Yantai (YNT)",
            "arrival": "Noibai International (HAN)",
            "class": "First Class",
            "price": 5071000,
            "duration": "2h 50m",
            "scheduled": "2023-06-02T00:10:00+00:00",
            "estimated": "2023-06-02T03:00:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        },
        {
            "id": 5,
            "airline": "China Eastern Airlines (MU7333)",
            "departure": "Shanghai Pudong International (PVG)",
            "arrival": "Noibai International (HAN)",
            "class": "Business",
            "price": 9513000,
            "duration": "2h 30m",
            "scheduled": "2023-06-02T00:10:00+00:00",
            "estimated": "2023-06-02T02:40:00+00:00",
            "date": "2023-06-02",
            "created_at": "2023-06-01T13:59:22.000000Z",
            "updated_at": "2023-06-01T13:59:22.000000Z"
        }
    ]
}
```


***Status Code:*** 200

<br>



#### IX. Example Request: paginate



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| paginate | 5 |  |



***Body: None***



#### IX. Example Response: paginate
```js
{
    "status": 200,
    "properties": {
        "count": 5,
        "total": 100
    },
    "data": {
        "current_page": 1,
        "data": [
            {
                "id": 1,
                "airline": "flydubai (FZ776)",
                "departure": "Osh International Airport (OSS)",
                "arrival": "Dubai (DXB)",
                "class": "Business",
                "price": 7908000,
                "duration": "2h 10m",
                "scheduled": "2023-06-02T02:00:00+00:00",
                "estimated": "2023-06-02T04:10:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 2,
                "airline": "Emirates (EK2477)",
                "departure": "Osh International Airport (OSS)",
                "arrival": "Dubai (DXB)",
                "class": "Economy",
                "price": 5826000,
                "duration": "2h 10m",
                "scheduled": "2023-06-02T02:00:00+00:00",
                "estimated": "2023-06-02T04:10:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 3,
                "airline": "Ural Airlines (U62514)",
                "departure": "Osh International Airport (OSS)",
                "arrival": "Kazan (KZN)",
                "class": "Premium Economy",
                "price": 4974000,
                "duration": "0h 45m",
                "scheduled": "2023-06-02T01:30:00+00:00",
                "estimated": "2023-06-02T02:15:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 4,
                "airline": "Longhao Airlines (GI4223)",
                "departure": "Yantai (YNT)",
                "arrival": "Noibai International (HAN)",
                "class": "First Class",
                "price": 5071000,
                "duration": "2h 50m",
                "scheduled": "2023-06-02T00:10:00+00:00",
                "estimated": "2023-06-02T03:00:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 5,
                "airline": "China Eastern Airlines (MU7333)",
                "departure": "Shanghai Pudong International (PVG)",
                "arrival": "Noibai International (HAN)",
                "class": "Business",
                "price": 9513000,
                "duration": "2h 30m",
                "scheduled": "2023-06-02T00:10:00+00:00",
                "estimated": "2023-06-02T02:40:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            }
        ],
        "first_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=1",
        "from": 1,
        "last_page": 20,
        "last_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=20",
        "links": [
            {
                "url": null,
                "label": "&laquo; Previous",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=1",
                "label": "1",
                "active": true
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=2",
                "label": "2",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=3",
                "label": "3",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=4",
                "label": "4",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=5",
                "label": "5",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=6",
                "label": "6",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=7",
                "label": "7",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=8",
                "label": "8",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=9",
                "label": "9",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=10",
                "label": "10",
                "active": false
            },
            {
                "url": null,
                "label": "...",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=19",
                "label": "19",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=20",
                "label": "20",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=2",
                "label": "Next &raquo;",
                "active": false
            }
        ],
        "next_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=2",
        "path": "http://flight-api.test/api/flights",
        "per_page": 5,
        "prev_page_url": null,
        "to": 5,
        "total": 100
    }
}
```


***Status Code:*** 200

<br>



#### X. Example Request: paginate with page



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs |  |
| paginate | 5 |  |
| page | 3 |  |



***Body: None***



#### X. Example Response: paginate with page
```js
{
    "status": 200,
    "properties": {
        "count": 5,
        "total": 100
    },
    "data": {
        "current_page": 3,
        "data": [
            {
                "id": 11,
                "airline": "Jet Linx Aviation (JL5018)",
                "departure": "Noibai International (HAN)",
                "arrival": "Kansai International (KIX)",
                "class": "Economy",
                "price": 8832000,
                "duration": "6h 30m",
                "scheduled": "2023-06-02T01:20:00+00:00",
                "estimated": "2023-06-02T07:50:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 12,
                "airline": "FlexFlight (W24938)",
                "departure": "Noibai International (HAN)",
                "arrival": "Kansai International (KIX)",
                "class": "Business",
                "price": 2647000,
                "duration": "6h 30m",
                "scheduled": "2023-06-02T01:20:00+00:00",
                "estimated": "2023-06-02T07:50:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 13,
                "airline": " (H19874)",
                "departure": "Noibai International (HAN)",
                "arrival": "Seoul (Incheon) (ICN)",
                "class": "Premium Economy",
                "price": 7132000,
                "duration": "6h 10m",
                "scheduled": "2023-06-02T01:15:00+00:00",
                "estimated": "2023-06-02T07:25:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 14,
                "airline": "FlexFlight (W24982)",
                "departure": "Noibai International (HAN)",
                "arrival": "Gimhae (PUS)",
                "class": "Economy",
                "price": 8850000,
                "duration": "6h 0m",
                "scheduled": "2023-06-02T01:00:00+00:00",
                "estimated": "2023-06-02T07:00:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            },
            {
                "id": 15,
                "airline": "FlexFlight (W24920)",
                "departure": "Noibai International (HAN)",
                "arrival": "Chu-Bu Centrair International (Central Japan International) (NGO)",
                "class": "Economy",
                "price": 6351000,
                "duration": "7h 5m",
                "scheduled": "2023-06-02T00:55:00+00:00",
                "estimated": "2023-06-02T08:00:00+00:00",
                "date": "2023-06-02",
                "created_at": "2023-06-01T13:59:22.000000Z",
                "updated_at": "2023-06-01T13:59:22.000000Z"
            }
        ],
        "first_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=1",
        "from": 11,
        "last_page": 20,
        "last_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=20",
        "links": [
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=2",
                "label": "&laquo; Previous",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=1",
                "label": "1",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=2",
                "label": "2",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=3",
                "label": "3",
                "active": true
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=4",
                "label": "4",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=5",
                "label": "5",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=6",
                "label": "6",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=7",
                "label": "7",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=8",
                "label": "8",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=9",
                "label": "9",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=10",
                "label": "10",
                "active": false
            },
            {
                "url": null,
                "label": "...",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=19",
                "label": "19",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=20",
                "label": "20",
                "active": false
            },
            {
                "url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=4",
                "label": "Next &raquo;",
                "active": false
            }
        ],
        "next_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=4",
        "path": "http://flight-api.test/api/flights",
        "per_page": 5,
        "prev_page_url": "http://flight-api.test/api/flights?api_key=Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M&paginate=5&page=2",
        "to": 15,
        "total": 100
    }
}
```


***Status Code:*** 200

<br>



## User



### 1. Register


Endpoint `/api/user/register` digunakan untuk mendaftarkan akun baru. Setelah mendaftar akun, anda bisa login dan mendapatkan API Key yang bisa digunakan untuk mendapatkan data-data tiket penerbangan pada layanan kami. Berikut contoh penggunaan parameternya:


***Endpoint:***

```bash
Method: POST
Type: 
URL: http://flight-api.test/api/user/register
```



***More example Requests/Responses:***


#### I. Example Request: Registrasi berhasil



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| name | user | Username untuk pembuatan akun |
| email | user@example.com | Email untuk pembuatan akun |
| password | 12345678 | Password minimal 8 karakter |



***Body: None***



#### I. Example Response: Registrasi berhasil
```js
{
    "status": 201,
    "message": "Registrasi berhasil. Silahkan login untuk mengakses API key."
}
```


***Status Code:*** 0

<br>



#### II. Example Request: Registrasi gagal



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| name | user | Username untuk pembuatan akun |
| email | user@example.com | Email untuk pembuatan akun |
| password | 123 | Password minimal 8 karakter |



***Body: None***



#### II. Example Response: Registrasi gagal
```js
{
    "status": 422,
    "message": "Validasi gagal.",
    "errors": {
        "email": [
            "The email has already been taken."
        ],
        "password": [
            "The password field must be at least 8 characters."
        ]
    }
}
```


***Status Code:*** 422

<br>



### 2. Login


Endpoint `/api/user/login` digunakan untuk masuk ke akun yang sudah didaftarkan. Setelah login, anda akan mendapatkan API Key yang bisa digunakan untuk mendapatkan data-data tiket penerbangan pada layanan kami. Berikut contoh penggunaan parameternya:


***Endpoint:***

```bash
Method: POST
Type: 
URL: http://flight-api.test/api/user/login
```



***More example Requests/Responses:***


#### I. Example Request: Login berhasil



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| email | user@example.com |  |
| password | 12345678 |  |



***Body: None***



#### I. Example Response: Login berhasil
```js
{
    "status": 200,
    "message": "Login berhasil.",
    "data": {
        "name": "user",
        "email": "user@example.com",
        "registered_at": "02 June 2023, 12:55 AM",
        "api_key": "OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs",
        "api_usage": 0
    }
}
```


***Status Code:*** 200

<br>



#### II. Example Request: Login gagal



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| email | user@example.com |  |
| password | 12345678abc |  |



***Body: None***



#### II. Example Response: Login gagal
```js
{
    "status": 401,
    "error": {
        "code": "invalid_credentials",
        "message": "Email atau password salah."
    }
}
```


***Status Code:*** 401

<br>



### 3. API Key Reset


Endpoint `/api/key/reset` digunakan untuk membuat ulang API Key yang sudah anda punya sebelumnya. Membuat ulang API Key mungkin anda perlukan ketika orang lain sudah mengetahui API Key anda dan anda tidak ingin orang tersebut menggunakan API Key milik anda. Berikut contoh penggunaan parameternya:


***Endpoint:***

```bash
Method: PATCH
Type: 
URL: http://flight-api.test/api/key/reset
```



***More example Requests/Responses:***


#### I. Example Request: Reset key berhasil



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| email | user@example.com | Email anda |
| password | 12345678 | Password anda |
| api_key | OjDoXb9vV28uhnIHsLz3pcOPRjJhhUfs | API Key lama anda |



***Body: None***



#### I. Example Response: Reset key berhasil
```js
{
    "status": 200,
    "message": "API key anda berhasil direset.",
    "data": {
        "new_api_key": "Xm9Pn2EBhy0p7IU2lucSG1IsquFjxH6M",
        "times_reset": 1
    }
}
```


***Status Code:*** 200

<br>



#### II. Example Request: Reset key gagal



***Query:***

| Key | Value | Description |
| --- | ------|-------------|
| email | user@example.com | Email anda |
| password | 12345678 | Password anda |
| api_key | abcdefghijklmnopqrstuvwxyz | API Key lama anda |



***Body: None***



#### II. Example Response: Reset key gagal
```js
{
    "error": {
        "code": "invalid_api_key",
        "message": "API key tidak valid."
    }
}
```


***Status Code:*** 401

<br>



---
[Back to top](#-flight-api-documetation-)

>Generated at 2023-06-02 18:36:27 by [docgen](https://github.com/thedevsaddam/docgen)
