pipeline{
   agent any
   tools{
       maven'local_maven'
   }
   parameters {
         string{name: 'tomcat_staging', defaultvalue: '18.230.123.32' description: 'Remote staging server'}
   }
   stages{
      stage('Build'){
         steps{
             sh 'mvn clean package'
         }
         post{
            success{
                echo "Arciving the Artifacts"
                archiveArtifacts artifacts: '**/target/*.war'
            }
         }
      }
      stage ('Deployments') {
         parallel{
             stage ("Deploy to staging"){
          steps{
              sh "scp -v -o strictHostkeychecking=no **/*.war root@${params.tomcat_staging}:/opt/tomcat/webapps/"
          }
      }
  }
}
