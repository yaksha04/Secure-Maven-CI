SecureMavenCI is a security-focused Continuous Integration (CI) pipeline built using DevSecOps best practices.
It demonstrates how security can be shifted left into the CI process by integrating dependency vulnerability scanning, unit testing, and container security scanning alongside a standard Maven build.

This project is designed to reflect real-world CI pipelines, not just academic demos.

🎯 Objectives
Automate Java build and testing using Maven
Detect vulnerable dependencies before packaging
Build secure Docker images
Scan container images for known CVEs
Enforce security gates that fail insecure builds

🧰 Tools & Technologies
Tool / Technology	Purpose
Java 11	Application development
Maven	Build, test, and dependency management
JUnit	Unit testing framework
OWASP Dependency-Check	Dependency vulnerability scanning
Docker	Containerization
Trivy	Docker image vulnerability scanning
GitHub Actions	CI automation
Linux (WSL)	Development environment
Git	Version control

🛠️ Features Implemented
✅ Maven build pipeline using Java 11
✅ Automated unit testing with JUnit
✅ OWASP Dependency-Check integration
✅ CI pipeline using GitHub Actions
✅ Docker image creation
✅ Container image scanning with Trivy
✅ Security gates that fail builds on high-severity vulnerabilities

📂 Project Structure
SecureMavenCI/
├── src/                     # Java source code
├── pom.xml                  # Maven configuration with security plugins
├── Dockerfile               # Secure Docker image definition
├── .github/
│   └── workflows/
│       └── ci.yml           # GitHub Actions CI workflow
└── README.md

⚙️ Prerequisites
Ensure the following are installed on your system:
java -version        # Java 11
mvn -version         # Maven 3.8+
docker --version     # Docker
trivy --version      # Trivy (optional but recommended)

🚀 Running the Project Locally
1️⃣ Clone the Repository
git clone https://github.com/<your-username>/SecureMavenCI.git
cd SecureMavenCI

2️⃣ Maven Build & Unit Tests
mvn clean install

This step:
Compiles the application
Executes JUnit tests
Generates the JAR file

3️⃣ Dependency Vulnerability Scan (OWASP)
mvn org.owasp:dependency-check-maven:check

Reports generated in:
target/dependency-check-report.html
If critical vulnerabilities are found, the build fails automatically.

4️⃣ Build Docker Image
docker build -t securemavenci:latest .

Verify:
docker images | grep securemavenci

5️⃣ Run the Container (Optional)
docker run -d -p 8080:8080 --name securemavenci securemavenci:latest

Check logs:
docker logs securemavenci

6️⃣ Scan Docker Image with Trivy
trivy image securemavenci:latest

This scan identifies:
OS vulnerabilities
Application dependency vulnerabilities

🔁 CI Pipeline (GitHub Actions)

On every push or pull request, the pipeline automatically:
Checks out source code
Builds and tests the Maven project
Scans dependencies using OWASP Dependency-Check
Builds Docker image
Scans Docker image using Trivy
Fails the pipeline if HIGH or CRITICAL vulnerabilities are found
Powered by GitHub Actions.

🧠 What I Learned

Implementing DevSecOps in CI pipelines
Enforcing security gates during builds
Automating dependency vulnerability detection
Building and scanning Docker images securely
Using GitHub Actions for real-world CI automation

🔐 Security Philosophy

“If a build is insecure, it should not succeed.”
This pipeline enforces security by default, ensuring vulnerable artifacts never move forward in the delivery lifecycle.

📌 Future Enhancements

Upload security reports as CI artifacts
Add .trivyignore for managed risk acceptance
Implement branch protection rules
Add CI status badges
Extend pipeline to CD (deployment stage)

👤 Author

Yaksha (DevOps / DevSecOps Enthusiast)
Focused on building secure, production-ready CI/CD pipelines.
