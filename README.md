# Revenue-Database-Management-System

This project is a web-based application designed to manage non-tax revenue data efficiently. It includes functionalities for adding, updating, deleting, and viewing details related to schemes, revenues, departments, expenditures, beneficiaries, legislations, documents, government employees, and transactions.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Database Schema](#database-schema)
- [Files and Directories](#files-and-directories)

## Features

- **CRUD Operations:** Perform Create, Read, Update, and Delete operations for various entities including schemes, revenues, departments, etc.
- **Form-Based Interface:** User-friendly forms for data entry and updates.
- **Validation:** Input validation to ensure data integrity and completeness.
- **Database Integration:** Utilizes MySQL for data storage and retrieval.
- **Responsive Design:** Designed with responsive HTML and CSS for usability on various devices.

## Technologies Used

- **Frontend:** HTML5, CSS3
- **Backend:** PHP
- **Database:** MySQL

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone https://github.com/your_username/non-tax-revenue.git
   cd non-tax-revenue
   ```

2. **Database Setup:**
   - Import the database schema from `non-tax-revenue.sql`.
   - Update database credentials in `connect.php` file.

3. **Web Server Configuration:**
   - Ensure your web server (Apache, Nginx, etc.) is configured to serve PHP files.
   - Place the project in your web server's root directory.

4. **Accessing the Application:**
   - Open your web browser and navigate to `http://localhost/non-tax-revenue`.

## Using the Application

After setting up the project and accessing the `index.html` file, follow these steps to use the Non-Tax Revenue Management System:

1. **Navigate to `index.html`:**
   - Open your web browser.
   - Enter the URL `http://localhost/non-tax-revenue/index.html` (replace `localhost` with your server's domain or IP address if needed).

2. **Login to the System:**
   - You will be prompted with a login screen.
   - Use your credentials (username and password) to log into the system.

3. **Access the Database:**
   - After logging in, you will have access to the database.
   - The dashboard provides an overview of key metrics and quick links to different functionalities.

4. **Navigate through Modules:**
   - Click on Database from the sidebar to view, add, update, or delete entries related to that module.
   - Use the sidebar navigation bar to explore different sections such as schemes, revenues, departments, etc.

5. **Perform Operations:**
   - **Adding Data:** Click on "Add New" or similar buttons to add new entries.
   - **Updating Data:** Select an entry from the list and click on "Update" to modify its details.
   - **Deleting Data:** Choose an entry and click on "Delete" to remove it from the system.
   - **Viewing Data:** Click on "View All" or similar links to see a comprehensive list of entries for each module.

6. **Logout:**
   - To log out from the system, click on the logout button or link provided in the sidebar.

## Database Schema

The database schema (`non-tax-revenue.sql`) includes tables for:
- `scheme`
- `revenue`
- `departments`
- `expenditures`
- `beneficiaries`
- `legislations`
- `documents`
- `government_employees`
- `transactions`
- `main`

Each table corresponds to different aspects of non-tax revenue management.

## Files and Directories

- **HTML/PHP Files:** Contains frontend and backend logic for managing data.
- **CSS:** Styling for the frontend.
- **SQL File:** Database schema for setting up the required tables.
