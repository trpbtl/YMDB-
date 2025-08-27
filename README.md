# 🎬 YEFLIX – Awoye's Movie Database (WEB-APP)

[![Made with Oracle APEX](https://img.shields.io/badge/Made%20with-Oracle%20APEX-red)](https://apex.oracle.com/)  
[![Database Driven](https://img.shields.io/badge/Database-Driven-blue)]()  
[![AI Ready](https://img.shields.io/badge/AI-Ready-purple)]()  
[![Version](https://img.shields.io/badge/version-2.0-brightgreen)]()  
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)  
[![Status](https://img.shields.io/badge/status-Active-success)]()  

> **YEFLIX** is a dynamic, database-driven movie application built with Oracle APEX, inspired by IMDb. It showcases low-code development, relational data modeling, and interactive UI design, all deployed in a fully managed Oracle Cloud environment with integrated trailer streaming and watchlist functionality.

---

## 📑 Table of Contents
- [Live Demo](#-live-demo)
- [About the Project](#-about-the-project)
- [Current Features](#-current-features)
- [Planned Features](#-planned-features)
- [Tech Stack](#-tech-stack)
- [Database Design](#-database-design)
- [Architecture Overview](#-architecture-overview)
- [Screenshots](#-screenshots)
- [Setup & Deployment](#-setup--deployment)
- [Future Roadmap](#-future-roadmap)
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
YEFLIX was developed as a **full-stack Oracle APEX project** to simulate a modern movie database platform with integrated streaming capabilities and personalized user experiences. It leverages Oracle's low-code tools to handle **backend data management**, **UI creation**, and **third-party API integrations**.

**Goals of the project:**
- Reinforce SQL & relational database design skills
- Gain experience in Oracle APEX app building with real-world integrations
- Simulate modern streaming platform UI/UX flows
- Create a foundation for AI-powered movie recommendations
- Demonstrate enterprise-grade dashboard and analytics capabilities

---

## 🌟 Current Features

| Feature | Description |
|---------|-------------|
| 🎥 **Movie Catalog** | Comprehensive movie listings with dynamic posters from TMDB, release dates, genres, and ratings |
| 🎬 **Trailers Integration** | Watch official trailers directly in-app, powered by the **KinoCheck API** for seamless streaming |
| 🧑 **Cast & Crew** | Detailed actor and crew profiles with complete filmographies and role information |
| ⭐ **User Reviews** | Community-driven ratings & reviews system via APEX interactive reports |
| 🔎 **Advanced Search & Filters** | Faceted search by genre, year, rating, actor, plus **watchlist integration** to see saved movies |
| 🖼 **Dynamic Poster URLs** | High-quality movie posters loaded from TMDB with proper URL handling and fallback images |
| ⬅️ **Intuitive Navigation** | Smooth user experience with dedicated back buttons and breadcrumb navigation |
| 📊 **Analytics Dashboard** | Real-time charts showing user activity trends, popular movies, and rating distributions |

---

## 🚧 Planned Features

| Planned Feature | Goal | Status |
|-----------------|------|---------|
| 🧠 **AI Extensions** | Integrate ONNX models for automated movie summaries and personalized recommendations | In Development |
| 🤖 **RAG Pipelines** | Use Oracle AI Vector Search + retrieval-augmented generation for context-aware movie suggestions | Planning |
| 🔐 **User Authentication** | Complete user account system with personalization, watchlists, and secure sessions | Roadmap |
| 🌐 **Multi-language Support** | Provide subtitles, translated metadata, and localized content | Future Release |

---

## 🧰 Tech Stack

| Layer | Technology |
|-------|------------|
| **Frontend** | Oracle APEX UI Components (Cards, Forms, Dialogs, Reports, Charts) |
| **Backend** | Oracle Database (PL/SQL, Views, Functions, Triggers) |
| **APIs** | KinoCheck API (trailers), TMDB API (posters & metadata) |
| **AI/ML** *(planned)* | ONNX Models, Oracle AI Vector Search, RAG Pipelines |
| **DevOps** | Oracle Autonomous Database, APEX export packages |
| **Tools** | SQL Developer, SQLcl, Oracle Live SQL |

---

## 🗃 Database Design

YEFLIX uses a **normalized relational schema** optimized for performance and scalability:

### Core Entities
- **MOVIES**: Title, genre, rating, release year, poster URLs, trailer integration
- **ACTORS**: Comprehensive actor profiles with biographical data and filmographies  
- **CAST**: Many-to-many relationship table linking actors to movies with role details
- **REVIEWS**: User-generated ratings, comments, and review timestamps
- **WATCHLIST** *(integrated)*: User movie preferences and viewing intentions
- **USERS** *(planned)*: Authentication, personalization, and user preferences

### Data Integrity Features
- Foreign key constraints ensuring referential integrity
- Indexes on frequently queried columns (genre, release_year, rating)
- Triggers for automated data validation and audit trails
- Views for complex reporting and analytics queries

---

## 🏗 Architecture Overview
```
[User Browser]
     ↓
[Oracle APEX Frontend]
     ↓
[Oracle Database Backend]
     ↗ ↓ ↘
[KinoCheck API]  [TMDB API]  [Future: ONNX/RAG Services]
    (Trailers)    (Posters)     (AI Recommendations)
```

**Current Architecture:**
- **UI Layer**: Oracle APEX components with responsive design
- **Business Logic**: PL/SQL procedures and functions
- **Data Layer**: Oracle Database with optimized queries
- **Integration Layer**: REST API calls to external movie services

**Planned Enhancements:**
- **AI Layer**: Vector embeddings and machine learning models
- **Authentication**: Oracle APEX built-in security with custom extensions

---

## 🖼 Screenshots

| Screen | Description | Preview |
|--------|-------------|---------|
| **Dashboard** | Featured movies with trailer integration and quick access | ![Dashboard](screenshots/dashboard.png) |
| **Movie Details** | Complete movie information with cast, trailers, and reviews | ![Movie Details](screenshots/movie_details.png) |
| **Trailer Player** | In-app trailer streaming via KinoCheck API | ![Trailer Player](screenshots/trailer_player.png) |
| **Search & Filters** | Advanced filtering with watchlist integration | ![Search](screenshots/search.png) |
| **Actor Profile** | Comprehensive actor information and filmography | ![Actor Profile](screenshots/actor_profile.png) |
| **Analytics** | User engagement and movie popularity trends | ![Analytics](screenshots/analytics.png) |

> 🖼 **Tip:** Place your actual screenshots inside a `/screenshots` folder in your repo.

---

## ⚙ Setup & Deployment

### **1️⃣ Prerequisites**
- Oracle APEX Workspace (21.1 or higher recommended)
- Oracle Autonomous Database or Oracle Database 19c+
- API keys for external services (optional for enhanced features)

### **2️⃣ Import the APEX Application**
```bash
# Download the application export
git clone https://github.com/your-username/yeflix.git
cd yeflix
```

1. Log in to your Oracle APEX workspace
2. Navigate to **App Builder → Import**
3. Upload the application file from `/src/yeflix_app_export.sql`
4. Install supporting objects when prompted
5. Configure application settings and shared components

### **3️⃣ Database Setup**
Execute the database scripts in order:
```sql
-- Core schema creation
@src/database/01_create_tables.sql

-- Sample data insertion
@src/database/02_insert_sample_data.sql

-- Views and functions
@src/database/03_create_views.sql

-- API integration setup (optional)
@src/database/04_api_configuration.sql
```

### **4️⃣ API Configuration (Optional)**
For enhanced features, configure external APIs:
```sql
-- KinoCheck API for trailers
BEGIN
  apex_web_service.g_request_headers(1).name := 'Authorization';
  apex_web_service.g_request_headers(1).value := 'Bearer YOUR_API_KEY';
END;
```

### **5️⃣ Launch Application**
1. Return to APEX App Builder
2. Click **Run Application**
3. Test core functionality and API integrations
4. Configure user access and security settings

---

## 📈 Future Roadmap

### **Phase 1: AI Integration** *(Q1 2025)*
- Implement ONNX model loading for movie recommendations
- Create vector embeddings for semantic movie search
- Develop AI-powered plot summary generation

### **Phase 2: Enhanced User Experience** *(Q2 2025)*
- Full user authentication and profile management
- Advanced watchlist features with smart notifications
- Social features: friend recommendations and shared watchlists

### **Phase 3: Content Expansion** *(Q3 2025)*
- Multi-language support with translated metadata
- TV series and documentary integration
- Enhanced analytics with machine learning insights

### **Phase 4: Platform Evolution** *(Q4 2025)*
- Mobile app companion using Oracle APEX
- Advanced AI chatbot for movie queries
- Integration with streaming service availability

---

## 🤝 Contributing
Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

---

## 👤 Author
**Eyram Makafui Awoye**  
- 💼 [LinkedIn](https://www.linkedin.com/in/eyram-makafui-awoye)  
- 📧 eyramawoye@gmail.com | eyram.awoye@ashesi.edu.gh  
- 🌐 [GitHub](https://github.com/trpbtl)

*Aspiring software developer with interests in database design, API integrations, and AI-powered applications.*

---

## 📜 License
This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

## ⭐ Show Your Support
Give a ⭐️ if this project helped you learn Oracle APEX or inspired your own movie database application!

---

*Built with ❤️ using Oracle APEX and modern web technologies*
