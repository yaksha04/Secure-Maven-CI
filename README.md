SecureMavenCI is a robust and security-focused Continuous Integration (CI) pipeline designed using DevSecOps best practices. This project demonstrates automated code compilation, testing, vulnerability scanning, and Docker image creation for secure Java-based applications.

⚙️ Tools & Technologies Used
Tool / Tech	Purpose
Java 11	Language used for building the application
Maven	Build automation tool to compile, test, and package the Java project
JUnit	Unit testing framework for Java
OWASP Dependency-Check	Checks for known vulnerabilities in project dependencies
GitHub Actions	CI pipeline for automated build, test, and scan
Docker	Containerizes the application for consistent environment delivery
Trivy	Scans Docker images for vulnerabilities (optional security layer)
Linux (WSL)	Development environment
Git	Version control and collaboration

🛠️ Features Implemented
✅ Maven build pipeline with Java 11

✅ Unit testing using JUnit

✅ OWASP Dependency-Check integration for dependency vulnerability scanning

✅ CI automation using GitHub Actions

✅ Docker image build support

✅ Secure-by-default: all builds are scanned for known CVEs before packaging

📂 Project Structure
bash
Copy
Edit
SecureMavenCI/
├── src/                    # Java source code
├── pom.xml                # Maven configuration with dependency check plugin
├── Dockerfile             # Container definition
├── .github/
│   └── workflows/
│       └── ci.yml         # GitHub Actions CI workflow


🚀 How to Use
✅ Run Maven Build & Scan Locally:
bash
Copy
Edit
mvn clean install
mvn org.owasp:dependency-check-maven:check
🐳 Build Docker Image:
bash
Copy
Edit
docker build -t securemavenci:latest .
📦 GitHub Actions Workflow
yaml
Copy
Edit
name: Java Maven CI
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - uses: actions/setup-java@v4
      with:
        java-version: '11'
        distribution: 'temurin'
    - run: mvn clean install
💡 What I Learned
Implementing DevSecOps in real-world pipelines

Automating security checks in CI/CD

Dockerizing Java applications

Using GitHub Actions to enforce quality and security gates

Handling dependency vulnerabilities using OWASP tools
