# MiniShop Frontend

Este es el frontend de **MiniShop**, desarrollado con [Angular](https://angular.dev/) versión 19.0.2.

## 🚀 Requisitos previos

- [Node.js](https://nodejs.org/) v18+
- [Angular CLI](https://angular.dev/tools/cli) v19
- Backend de MiniShop en ejecución (ver [README del backend](../backend/README.md))

---

## 📦 Instalación

### Clonar proyecto
```bash
git clone git@github.com:IanScateni/MiniShop.git
cd frontEnd
```

Instalar dependencias:

```bash
npm install
```

---

## 🖥️ Desarrollo

Para levantar el servidor de desarrollo:

```bash
ng serve -o
```

La aplicación estará disponible en:  
👉 `http://localhost:4200/`

⚠️ Asegúrate de que el backend esté corriendo en `http://localhost:3000/api/v1` o actualiza la variable en `src/environments/environment.ts`.

---

## 🔧 Variables de entorno

El archivo `src/environments/environment.ts` debe contener:

```ts
export const environment = {
  production: false,
  baseUrl: 'http://localhost:3000/api/v1'
};
```

En producción (build):

```ts
export const environment = {
  production: true,
  baseUrl: 'https://<tu-dominio-o-ip>/api/v1'
};
```

---

## 🛠️ Comandos útiles

### Generar componentes

```bash
ng generate component nombre-componente
```

### Generar servicios

```bash
ng generate service nombre-servicio
```

### Build producción

```bash
ng build --configuration production
```

Los artefactos se guardan en `dist/`.

---

## 🐳 Ejecución con Docker

Puedes construir y correr el frontend con Docker:

```bash
docker build -t minishop-frontend .
docker run -p 4200:80 minishop-frontend
```

---

## ✅ Notas finales

- El login y registro se manejan contra el backend de MiniShop.  
- El panel administrativo requiere un usuario con rol `admin`.  
- El archivo `db.sql` inicializa la base de datos con usuarios y productos de prueba.
