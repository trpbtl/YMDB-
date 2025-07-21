# YMDB-
🎬 MENJFLIX
MENJFLIX is a dynamic, database-driven web application built using Oracle APEX, designed to emulate core features of IMDB. This project demonstrates a practical implementation of low-code development, data modeling, and interactive front-end UI design — all within a fully managed Oracle environment.

🚀 Built with the goal of mastering full-stack concepts and delivering production-grade applications using Oracle technologies.

📌 Table of Contents
About the Project

Features:
1.Tech Stac
2.Database Design
3.AI Integration (Optional)
4.Architecture Overview
5.Screenshots
6.Setup & Deployment
7.Future Improvements
8.Author

📖 About the Project
MENJFLIX was developed as a full-stack APEX project to simulate a modern movie database application. It leverages Oracle's low-code platform to manage back-end data, build intuitive UIs, and optionally incorporate AI features like generative plot summaries.

The goal was to:
Reinforce SQL and data modeling skills.
Learn Oracle APEX application building.
Simulate real-world UI/UX flows in enterprise dashboards.
Explore integration of AI models (e.g., ONNX) for future expansion.

🌟 Features
Feature	Description
🎥 Movie Catalog	Searchable list of movies with posters, release dates, genres, and ratings.
🧑 Cast & Crew	Actor and director profiles with cross-linked filmographies.
⭐ User Reviews	Community-based rating and review system with APEX interactive reports.
🔎 Faceted Search	Filter by genre, year, rating, actor, and more using APEX’s faceted search.
📊 Analytics	Visual charts and dashboards showing movie trends and user activity.
🧠 AI Extensions	(Optional) Generate plot summaries or recommendations via ONNX models and RAG sources.

🧰 Tech Stack
Layer	Technology
Frontend	Oracle APEX UI Components (Cards, Forms, Dialogs, Reports, Charts)
Backend	Oracle Database (PL/SQL, Views, Functions, Triggers)
AI/ML (optional)	ONNX Model Upload via DB, Oracle AI Vector Search / RAG
DevOps	Oracle Cloud Autonomous Database, APEX export packages
Tools	SQL Developer, SQLcl, Live SQL

🗃️ Database Design
MENJFLIX uses a relational schema with the following key entities:
MOVIES: Stores title, genre, rating, release year, poster URL.
ACTORS: Basic actor profiles with links to films.
CAST: Many-to-many relationship between actors and movies.
REVIEWS: User-submitted ratings and comments.
USERS (optional): For managing login and personalization features.
All tables are designed with appropriate foreign keys, constraints, and indexing to ensure performance and data integrity.

🤖 AI Integration (Optional)
MENJFLIX optionally integrates with Oracle AI Services using:

ONNX model loading into Oracle DB
Use of CREATE MINING MODEL to define predictive models
Integration with RAG (Retrieval-Augmented Generation) sources for smart recommendations and AI-generated summaries
APEX UI extensions to call AI attributes and render insights dynamically

ℹ️ Requires additional setup: granting privileges and uploading models to schema.

🏗️ Architecture Overview
plaintext
Copy
Edit
[User Browser]
     ↓
[Oracle APEX Frontend]
     ↓
[Oracle Database Backend]
     ↘ Optional ↙
[AI Model via ONNX / RAG Services]
All UI elements are built using Oracle APEX components.

Backend logic (validation, calculation, security) is handled via PL/SQL and APEX processes.
Optional AI integration uses vector embeddings and text generation in the database context.

🖼️ Screenshots
<img width="1911" height="789" alt="image" src="https://github.com/user-attachments/assets/ca54c609-873d-4d37-a05d-86507ee7854d" />
<img width="1900" height="850" alt="image" src="https://github.com/user-attachments/assets/8369e35f-bcc3-4460-92d0-e1875e88531f" />



⚙️ Setup & Deployment
Requirements:
Oracle APEX environment (free on apex.oracle.com or Oracle Cloud)
SQL Developer or SQLcl
Oracle Database user with CREATE privileges

Deployment Steps:
Import the APEX App:

Upload the .sql or .zip export file in APEX App Builder.
Run SQL Scripts:
Set up the schema: movies, actors, reviews, etc.
Seed the database with sample data if needed.

Grant Privileges (if using AI features):

sql
Copy
Edit
GRANT CREATE MINING MODEL TO YourSchemaName;
Test the App:

Run and interact with the UI.

Submit reviews, view dashboards, etc.

📈 Future Improvements
🧑‍💻 Add user authentication and login sessions
🔄 Allow users to edit/delete their reviews
🎯 Add recommendation engine based on viewing history
🌐 Support for multiple languages or subtitles
🤖 Improve AI integration with contextual queries
