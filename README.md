# 🎬 YEFLIX – Awoye's Movie Database (WEB-APP)

[![Made with Oracle APEX](https://img.shields.io/badge/Made%20with-Oracle%20APEX-red)](https://apex.oracle.com/)  
[![Database Driven](https://img.shields.io/badge/Database-Driven-blue)]()  
[![AI Ready](https://img.shields.io/badge/AI-Ready-purple)]()  
[![Version](https://img.shields.io/badge/version-1.0-brightgreen)]()  
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)  
[![Status](https://img.shields.io/badge/status-Active-success)]()  

> **YEFLIX** is a dynamic, database-driven movie application built with Oracle APEX, inspired by IMDb. It showcases low-code development, relational data modeling, and interactive UI design, all deployed in a fully managed Oracle Cloud environment.

---

## 📑 Table of Contents
- [Live Demo](#-live-demo)
- [About the Project](#-about-the-project)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Database Design](#-database-design)
- [AI Integration (Optional)](#-ai-integration-optional)
- [Architecture Overview](#-architecture-overview)
- [Screenshots](#-screenshots)
- [Setup & Deployment](#-setup--deployment)
- [Future Improvements](#-future-improvements)
- [Author](#-author)
- [License](#-license)

---

## 🌐 Live Demo
🚀 **[Click here to view the live demo](https://your-demo-link.com)** *(Replace with your deployed app URL)*  

> **Demo Credentials** *(if applicable)*  
> **Username:** demo_user  
> **Password:** Demo@123  

---

## 📖 About the Project
YEFLIX was developed as a **full-stack Oracle APEX project** to simulate a modern movie database platform.  
It uses Oracle's low-code tools to handle **backend data management**, **UI creation**, and **optional AI-powered recommendations**.  

**Goals of the project:**
- Reinforce SQL & relational database design skills.
- Gain experience in Oracle APEX app building.
- Simulate real-world UI/UX flows for enterprise-grade dashboards.
- Explore AI integration using ONNX & RAG for summaries and recommendations.

---

## 🌟 Features

| Feature | Description |
|---------|-------------|
| 🎥 **Movie Catalog** | Searchable movie listings with posters, release dates, genres, and ratings. |
| 🧑 **Cast & Crew** | Actor/director profiles linked to their filmographies. |
| ⭐ **User Reviews** | Community-based ratings & reviews via APEX interactive reports. |
| 🔎 **Faceted Search** | Filter by genre, year, rating, actor, and more. |
| 📊 **Analytics** | Charts & dashboards showing trends and user activity. |
| 🧠 **AI Extensions** *(optional)* | Generate plot summaries & recommendations using ONNX + RAG. |

---

## 🧰 Tech Stack

| Layer | Technology |
|-------|------------|
| **Frontend** | Oracle APEX UI Components (Cards, Forms, Dialogs, Reports, Charts) |
| **Backend** | Oracle Database (PL/SQL, Views, Functions, Triggers) |
| **AI/ML (optional)** | ONNX Models, Oracle AI Vector Search, RAG Pipelines |
| **DevOps** | Oracle Autonomous Database, APEX export packages |
| **Tools** | SQL Developer, SQLcl, Oracle Live SQL |

---

## 🗃 Database Design

YEFLIX uses a **relational schema** with these main entities:
- **MOVIES**: Title, genre, rating, release year, poster URL.  
- **ACTORS**: Actor profiles with linked film roles.  
- **CAST**: Many-to-many join table between actors and movies.  
- **REVIEWS**: User-submitted ratings and comments.  
- **USERS** *(optional)*: Login and personalization features.  

**Data Integrity**: Foreign keys, constraints, and indexes are applied for performance.

---

## 🤖 AI Integration (Optional)

YEFLIX can integrate AI features using:
- **ONNX model loading** into Oracle Database.
- **CREATE MINING MODEL** for predictive analytics.
- **RAG (Retrieval-Augmented Generation)** for contextual recommendations.

**Requirements**:  
```sql
GRANT CREATE MINING MODEL TO your_schema;
```

---

## 🏗 Architecture Overview
```
[User Browser]
     ↓
[Oracle APEX Frontend]
     ↓
[Oracle Database Backend]
     ↘ Optional ↙
[AI Model via ONNX / RAG Services]
```
- **UI**: Built entirely with Oracle APEX components.  
- **Backend**: PL/SQL logic, data validation, and security.  
- **AI Layer** *(optional)*: Vector embeddings & text generation.

---

## 🖼 Screenshots

| Screen | Description | Preview |
|--------|-------------|---------|
| **Home / Dashboard** | Main landing page showing featured movies. | ![Dashboard](screenshots/dashboard.png) |
| **Movie Details** | Movie info with poster, cast, reviews. | ![Movie Details](screenshots/movie_details.png) |
| **Search & Filters** | Faceted search with multiple filters. | ![Search](screenshots/search.png) |
| **Actor Profile** | Bio, photo, and filmography. | ![Actor Profile](screenshots/actor_profile.png) |
| **Analytics** | Charts of ratings and trends. | ![Analytics](screenshots/analytics.png) |

> 🖼 **Tip:** Place your actual screenshots inside a `/screenshots` folder in your repo.

---

## ⚙ Setup & Deployment

### **1️⃣ Import the APEX App**
1. Log in to your Oracle APEX workspace.  
2. Go to **App Builder → Import**.  
3. Upload the `.sql` or `.zip` export file from `/src`.  
4. Install supporting objects when prompted.

---

### **2️⃣ Run SQL Scripts**
- Create schema objects:
```sql
CREATE TABLE movies (...);
CREATE TABLE actors (...);
CREATE TABLE cast (...);
CREATE TABLE reviews (...);
```
- Insert seed data if required.

---

### **3️⃣ (Optional) AI Feature Setup**
- Grant privileges:
```sql
GRANT CREATE MINING MODEL TO your_schema;
```
- Upload ONNX model to database.
- Configure AI Vector Search if using RAG.

---

### **4️⃣ Run the Application**
1. Click **Run Application** in APEX.  
2. Log in using default credentials or newly created users.

---

## 📈 Future Improvements
- 🧑‍💻 Add user authentication & login sessions.  
- 🔄 Allow users to edit/delete reviews.  
- 🎯 AI-based movie recommendations based on watch history.  
- 🌐 Multi-language & subtitle support.  
- 🤖 Context-aware AI queries for summaries.  

---

## 👤 Author
**Eyram Makafui Awoye**  
- 💼 [LinkedIn](https://www.linkedin.com/in/eyram-makafui-awoye)  
- 📧 eyram.awoye@example.com  

---

## 📜 License
This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.
