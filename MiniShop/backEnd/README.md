<p align="center">
  <a href="http://nestjs.com/" target="blank">
    <img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" />
  </a>
</p>

# 🛠️ MiniShop API (NestJS)

API desarrollada en **NestJS** para el proyecto **MiniShop**.

---

## 🚀 Pasos de instalación

### 1️⃣ Clonar proyecto
```bash
git clone git@github.com:IanScateni/MiniShop.git
cd backEnd
```

### 2️⃣ Instalar dependencias
```bash
yarn install
# o
npm install
```

### 3️⃣ Configuración de entorno
Clonar el archivo `.env.template` y renombrarlo a `.env`:

```bash
cp .env.template .env
```

Editar las variables según tu entorno.  
Ejemplo (modo local con MySQL instalado):
```env
STAGE=dev

DB_HOST=localhost
DB_PORT=3306
DB_NAME=minishop
DB_USER=root
DB_PASSWORD=123456

PORT=3000
HOST_API=http://localhost:3000/api/v1

JWT_SECRET=Est3EsMISE3Dsecreto32s
JWT_EXPIRES_IN=2h
```

---

## 🐳 Opción 1: Levantar base de datos con Docker
Asegúrate de tener **Docker** y **docker-compose** instalados.

```bash
docker-compose up -d
```

Esto levanta un contenedor MySQL en el puerto **3307** (no choca con instalaciones locales).  
Credenciales: `root / 123456` (configurables en `.env`).

---

## 💻 Opción 2: Usar MySQL local
Si ya tienes MySQL en tu máquina, simplemente crea la base de datos:

```sql
CREATE DATABASE minishop;
```

y ajusta las variables `.env` para apuntar a tu servidor local.

---

## 📦 Importar datos iniciales
Se incluye el archivo `db.sql` con datos de prueba.

```bash
mysql -u root -p minishop < db.sql
```

---

## ▶️ Levantar servidor NestJS

Modo desarrollo:
```bash
npm run start:dev
# o
yarn start:dev
```

Servidor estará disponible en:
```
http://localhost:3000/api/v1
```

---

## 🌱 Datos de prueba (seed)
Opcionalmente puedes ejecutar el **seed** desde la API:

```
GET http://localhost:3000/api/v1/seed
```

Esto insertará productos y usuarios de prueba.

---

## 🔐 Notas
- JWT configurado en `.env`.
- API protegida para rutas de administración.
- Base de datos persistida en el volumen `./mysql` si usas Docker.

---

## Postman Collection

En la raíz de este proyecto encontrarás el archivo:

minishop.postman_collection.json

Este archivo contiene ejemplos listos para probar los endpoints de la API en Postman.
---

