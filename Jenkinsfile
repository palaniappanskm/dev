pipeline {
    agent any

    environment {
        // Define environment variables such as server credentials
        TOMCAT_URL = 'http://18.230.123.32:8080'
        TOMCAT_USER = 'Tomcat'
        TOMCAT_PASSWORD = '12345678'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from your version control system (e.g., Git)
                git 'https://github.com/palaniappanskm/dev.git'
            }
        }

        stage('Build') {
            steps {
                // Build your Maven-based Java application
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the application to Tomcat server
                sh "curl -v -u $TOMCAT_USER:$TOMCAT_PASSWORD --upload-file target/your-application.war $TOMCAT_URL/manager/text/deploy?path=/your-application"
            }
        }

        stage('Post-deploy Test') {
            steps {
                // Run tests to verify deployment
                // Example: sh 'mvn test'
                sh 'mvn test'
            }
        }
    }

    post {
        success {
            // Perform actions if the deployment is successful
            echo 'Deployment successful!'
        }
        failure {
            // Perform actions if the deployment fails
            echo 'Deployment failed!'
        }
    }
}
