# 🛍️ MiniShop – Prueba Fullstack

Este proyecto corresponde al desarrollo de la **prueba técnica Fullstack**, implementando un sistema de comercio electrónico con **Angular (frontend)** y **NestJS (backend)**, conectado a una base de datos **MySQL**.

Incluye:

- Autenticación de usuarios (registro, login, logout, roles).
- Panel público con listado de productos por categorías.
- Panel administrativo para crear, editar, eliminar y listar productos.
- Base de datos preconfigurada con un `db.sql`.

---

## 📂 Estructura del proyecto

```
MiniShop/
│── backEnd/      → Proyecto NestJS (API REST)
│── frontEnd/     → Proyecto Angular (aplicación cliente)
│── README.md     → Documentación general del proyecto
```

Cada carpeta (`backEnd/` y `frontEnd/`) contiene su propio README con instrucciones detalladas.

---

## 🚀 Tecnologías usadas

- **Backend:** [NestJS](https://nestjs.com/), TypeScript, JWT Auth, MySQL.
- **Frontend:** [Angular 19](https://angular.dev/), TailwindCSS, DaisyUI.
- **Base de datos:** MySQL 8 (con soporte para Docker).
- **Gestión de dependencias:** npm / yarn.

---

## ⚙️ Instalación y ejecución

### 🔹 Backend
Ir a la carpeta `backEnd/` y seguir el README:
```bash
cd backEnd
cp .env.template .env
# Configurar variables de entorno
docker-compose up -d   # Levantar base de datos con Docker
npm run start:dev      # Iniciar servidor NestJS
```

API disponible en:
```
http://localhost:3000/api/v1
```

### 🔹 Frontend
Ir a la carpeta `frontEnd/` y seguir el README:
```bash
cd frontEnd
npm install
ng serve
```

Aplicación disponible en:
```
http://localhost:4200/
```

---

## 🗄️ Base de datos

En la raíz del proyecto se incluye `db.sql` que contiene:

- Tablas necesarias (`users`, `products`, etc.).
- Datos iniciales para pruebas.

Puedes importar este archivo directamente en MySQL si no usas Docker.


## ✨ Funcionalidades principales

### 👤 Usuarios
- Registro de cuenta nueva.
- Login con JWT.
- Logout y cierre de sesión.

### 🛒 Público
- Ver productos listados por categorías:
  - Computadoras
  - Monitores
  - Accesorios
- Vista de detalle del producto.

### 🔑 Administrador
- Dashboard con listado de productos.
- Crear nuevo producto.
- Editar producto existente.
- Eliminar producto.
- Subida de imágenes.

### 👥 Credenciales de prueba
-	Admin:
-	Email: admin@minishop.com
-	Password: Admin123
-	Usuario normal:
-	Email: user@minishop.com
-	Password: User123

---

## 📌 Notas finales

Este proyecto fue desarrollado como **prueba técnica fullstack**.  
Está organizado para que pueda correrse tanto con **Docker** como de manera **local**.

---
