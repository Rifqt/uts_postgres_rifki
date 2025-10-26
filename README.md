# 🧩 UTS Manajemen Basis Data - PostgreSQL & PGAdmin4
**Nama:** Rifki Taufik  
**Kelas:** V Informatika  
**Dosen:** Wildan Budiawan Z., S.T., M.Kom  
**Tahun Akademik:** 2025/2026

---

## 📦 Deskripsi
Proyek ini menjalankan **PostgreSQL** dan **PGAdmin4** menggunakan **Docker Compose**, serta membuktikan koneksi internal (PGAdmin) dan eksternal (DBeaver).

---

## ⚙️ Konfigurasi
| Service | Port | Container | Catatan |
|----------|------|------------|----------|
| PostgreSQL | 22129 | postgres_rifki | Database utama |
| PGAdmin4 | 44129 | pgadmin_rifki | GUI manajemen DB |

---

## 🧾 Environment
`.env` menyimpan kredensial agar tidak hardcoded.
```bash
POSTGRES_USER=postgres
POSTGRES_PASSWORD=ifunggul
PGADMIN_DEFAULT_EMAIL=admin@ifunggul.com
PGADMIN_DEFAULT_PASSWORD=admin123
```

---

## 🚀 Cara Menjalankan

1. Jalankan container:
   ```bash
   docker-compose up -d
   ```
2. Cek status:
   ```bash
   docker ps
   ```
3. Buka PGAdmin di browser:
   - URL: `http://localhost:44999`
   - Login: `admin@ifunggul.com` / `admin123`
4. Tambahkan server:
   - Host: `postgres_rifki`
   - Port: `5432`
   - Username: `postgres`
   - Password: `ifunggul`
5. Tes akses eksternal di **DBeaver**:
   - Host: `localhost`
   - Port: `22129`
   - Database: `postgres`
   - Username: `postgres`
   - Password: `ifunggul`

---

## 🧠 SQL Schema
Lihat file [`setup.sql`](./setup.sql) untuk pembuatan:
- Schema `salam`
- Table `mahasiswas`
- Role: `backend_dev`, `bi_dev`, `data_engineer`

---

## 🧩 Bukti Uji Akses
| User | Hak Akses | Hasil |
|------|------------|--------|
| backend_dev | CRUD | ✅ Bisa insert, update, delete |
| bi_dev | Read only | ✅ Hanya bisa SELECT |
| data_engineer | Full + Create Object | ✅ Bisa create/drop table |

---

## 📤 Upload
Push ke GitHub:
```bash
git init
git add .
git commit -m "UTS PostgreSQL & PGAdmin by Rifki"
git branch -M main
git remote add origin https://github.com/username/uts_postgres_rifki.git
git push -u origin main
```

---

## 📸 Dokumentasi Laporan PDF
Sertakan screenshot:
1. Docker Desktop (container running)
2. Isi `.env` dan `docker-compose.yml`
3. PGAdmin4 terkoneksi
4. DBeaver terkoneksi
5. SQL query & hasil uji constraint + role
6. Link GitHub
