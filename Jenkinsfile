pipeline{
   agent any
   environent{  
      staging_server=""
   }

   stages{
      stage{'Deploy to Remte'}{
         steps{
            sh ${workspace}/* root@{staging_server}:/var/www/html/applicationdeploy/'
         }
      }
   }
}
