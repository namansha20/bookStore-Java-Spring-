# 🚀 Quick Start Guide

Get BookHub running in 5 minutes!

## Prerequisites Checklist
- [ ] Java JDK 8+ installed
- [ ] Maven installed
- [ ] MySQL Server installed and running
- [ ] Apache Tomcat 9.x downloaded
- [ ] VS Code with Java extensions installed

## Step-by-Step Setup

### 1. Database Setup (2 minutes)
```bash
# Login to MySQL
mysql -u root -p

# Create database
CREATE DATABASE bookhub_db;
exit;
```

### 2. Configure Database (30 seconds)
Edit `src/main/resources/database.properties`:
```properties
db.password=YOUR_MYSQL_PASSWORD
```
Replace `YOUR_MYSQL_PASSWORD` with your actual MySQL password.

### 3. Build Application (1 minute)
```bash
# In project root directory
mvn clean package
```
This creates `target/BookHub.war`

### 4. Deploy to Tomcat (1 minute)

**Option A - VS Code Tomcat Extension:**
1. Install "Tomcat for Java" extension in VS Code
2. Press `Ctrl+Shift+P` → "Tomcat: Add Tomcat Server"
3. Press `Ctrl+Shift+P` → "Tomcat: Run on Tomcat Server"
4. Select `target/BookHub.war`

**Option B - Manual Deployment:**
1. Copy `target/BookHub.war` to `<TOMCAT_HOME>/webapps/`
2. Start Tomcat:
   - Windows: `<TOMCAT_HOME>\bin\startup.bat`
   - Linux/Mac: `<TOMCAT_HOME>/bin/startup.sh`

### 5. Access Application (10 seconds)
Open browser and go to:
```
http://localhost:8080/BookHub/books/
```

## 🎉 That's it! You should see the BookHub home page.

## Quick Test
1. Click "Add New Book"
2. Enter:
   - Title: "The Great Gatsby"
   - Author: "F. Scott Fitzgerald"
   - Price: 12.99
3. Click "Save Book"
4. You should see your book in the list!

## Troubleshooting

**Problem: Can't connect to database**
```bash
# Check MySQL is running
# Windows:
net start MySQL80

# Linux/Mac:
sudo systemctl status mysql
```

**Problem: Port 8080 in use**
- Stop other applications on port 8080
- Or change Tomcat port in `<TOMCAT_HOME>/conf/server.xml`

**Problem: 404 Error**
- Make sure URL is exactly: `http://localhost:8080/BookHub/books/`
- Check Tomcat logs in `<TOMCAT_HOME>/logs/catalina.out`

## Need More Help?
See the detailed [README.md](README.md) for:
- VS Code setup instructions
- Multiple deployment methods
- Detailed troubleshooting
- Project architecture

## Default Configuration
- **Database**: localhost:3306/bookhub_db
- **Username**: root
- **Password**: root (change in database.properties)
- **Tomcat Port**: 8080
- **Context Path**: /BookHub

Happy coding! 📚✨
