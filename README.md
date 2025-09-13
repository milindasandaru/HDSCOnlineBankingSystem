# Online Banking System

This is a Java EE web application for online banking, supporting user login, bill payment, comments, and password recovery. The project is structured for deployment on Apache Tomcat and uses JSP, Servlets, and a MySQL database.

## Features
- User authentication (login, password reset via email/OTP)
- Bill payment and history
- Commenting system
- Error handling and user feedback

## Project Structure
- `src/main/java/` - Java source code (Servlets, utility classes)
- `src/main/webapp/` - JSP pages, static resources, and `WEB-INF` (web.xml, libraries)
- `build/` - Compiled classes
- `.classpath`, `.project` - Eclipse project files

## Prerequisites
- Java 21+
- Apache Tomcat 10.1+
- MySQL database
- Eclipse IDE (recommended)

## Setup Instructions
1. **Clone the repository:**
   ```
   git clone <your-repo-url>
   ```
2. **Import into Eclipse:**
   - File > Import > Existing Projects into Workspace
   - Select the project root directory
3. **Configure Database:**
   - Create a MySQL database and user
   - Update DB connection details in the relevant Java classes (see `DatabaseConnection.java`)
4. **Add Libraries:**
   - Ensure all JARs in `src/main/webapp/WEB-INF/lib` are present in the build path
5. **Deploy to Tomcat:**
   - Right-click project > Run As > Run on Server

## Troubleshooting
- If you see errors related to missing classes or libraries, check the `WEB-INF/lib` folder and build path.
- For database errors, verify your MySQL server is running and credentials are correct.
- For servlet mapping issues, review `WEB-INF/web.xml`.

## Notes
- This project was developed collaboratively; some integration may be incomplete.
- UI is not modified from the original version.
- For any issues, check the console/logs for stack traces and error messages.

## License
This project is for educational purposes.

**Note:** If you encounter any bugs or issues, please report them via GitHub Issues or contact the maintainer.
