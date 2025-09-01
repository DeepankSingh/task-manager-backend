
# 📌 Task Manager Backend

A **Spring Boot REST API** for managing tasks. This backend provides endpoints for creating, retrieving, updating, and deleting tasks. It can be used with any frontend (e.g., React, Angular, Vue) or as a standalone API service.

---

## 🚀 Features

* Create, update, delete, and fetch tasks
* Mark tasks as **completed / pending**
* RESTful API design with JSON responses
* PostgreSQL / H2 database support
* CORS enabled for frontend integration
* Exception handling & validation

---

## 🛠 Tech Stack

* **Java 17+**
* **Spring Boot 3+**
* **Spring Data JPA**
* **PostgreSQL / H2**
* **Maven**

---

## ⚙️ Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/DeepankSingh/task-manager-backend.git
cd task-manager-backend
```

### 2. Configure Database

Update `src/main/resources/application.properties`:

For **PostgreSQL**:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/taskdb
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

For **H2 (in-memory)** (quick testing):

```properties
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driver-class-name=org.h2.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.h2.console.enabled=true
```

### 3. Run the Application

```bash
mvn spring-boot:run
```

The app will start on:

```
http://localhost:8080
```

---

## 📡 API Endpoints

### Base URL: `/api/tasks`

| Method | Endpoint | Description             |
| ------ | -------- | ----------------------- |
| GET    | `/`      | Get all tasks           |
| POST   | `/`      | Create a new task       |
| PUT    | `/{id}`  | Update an existing task |
| DELETE | `/{id}`  | Delete a task           |

### Example Request (Create Task)

```http
POST /api/tasks
Content-Type: application/json

{
  "title": "Finish Spring Boot Project",
  "description": "Complete the backend for task manager",
  "completed": false
}
```

### Example Response

```json
{
  "id": 1,
  "title": "Finish Spring Boot Project",
  "completed": false
}
```

---

## 🔗 Connecting with Frontend

If you’re using a frontend (like React), update API calls to point to your backend:

```javascript
const API_URL = "http://localhost:8080/api/tasks";
```

If deployed (e.g., **Render/Heroku/AWS**), replace with your hosted backend URL.

---

## 🧪 Testing

Run unit tests with:

```bash
mvn test
```

---

## 📜 License

This project is licensed under the **MIT License** – you can use and modify it freely.

---

## ✨ Author

👨‍💻 Developed by **\Deepank Singh**
📧 Email: [  singhdeepank9@gmail.com](mailto:your.email@example.co)
🔗 [LinkedIn](https://www.linkedin.com/in/deepank-singh/) | [GitHub](https://github.com/DeepankSingh)

