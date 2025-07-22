# 🌍 Travel Agency – MVC Node.js App

A simulated travel agency website built as a backend learning project using **Node.js**, **Express**, and **Pug**. Follows an MVC architecture and uses Sequelize ORM with MySQL.

---

## 🧾 Description

Travel Agency is a fictitious web platform featuring a homepage, destinations, and customer testimonials. It was built to practice:

- Node.js and Express server from scratch
- Pug as a template engine
- Clean MVC folder structure
- Static file serving and routing
- Dynamic page rendering

---

## 🛠️ Tech Stack

- 🟢 Node.js
- 🚂 Express.js
- 🧩 Pug
- 🗃️ Sequelize ORM
- 🐬 MySQL
- 📦 dotenv, nodemon

---

## 📁 Project Structure

```
travel-agency/
├── app.js
├── config/
│   └── db.js
├── controllers/
├── models/
├── routes/
├── views/
├── public/
│   ├── css/
│   └── img/
├── .env.example
└── README.md
```

---

## 🚀 Getting Started

```bash
git clone https://github.com/IanScateni/travel-agency.git
cd travel-agency
npm install
cp .env.example .env
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000)

---

## 🔐 Environment Variables

```
DB_NAME=travelAgency
DB_USER=root
DB_PASS=
DB_HOST=127.0.0.1
```

---

## 🧪 Database Setup

Make sure you have MySQL installed locally. Create the database using your preferred method (e.g., phpMyAdmin, DBeaver), or run:

```sql
CREATE DATABASE travelAgency;
```

Sequelize will auto-sync the models when the server starts. Confirm the .env file matches your credentials.

---

## 🧪 Sample Data

Run the following to seed demo data (trips and testimonials):

```bash
node seed.js
```

---

## 🧑‍💻 Author

Developed by **Ian Scateni**  
Part of personal backend training and portfolio showcase.

---

## 📜 License

This project is for educational and demonstration purposes.