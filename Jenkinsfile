pipeline{
   agent any
   environent{  
      staging_server="18.230.196.52"
   }

   stages{
      stage{'Deploy to Remte'}{
         steps{
            sh ${workspace}/* root@{staging_server}:/var/www/html/applicationdeploy/'
         }
      }
   }
}
