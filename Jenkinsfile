pipeline{
   agent any
   environment{  
      staging_server="18.230.123.32"
   }

   stages{
      stage('Deploy to Remote'){
         steps{
            sh 'scp -r ${WORKSPACE}/* root@${staging_server}:/var/www/html/applicationdeploy/'
         }
      }
   }
}
