pipeline{
   agent any
   environent{  
      staging_server="18.230.123.32"
   }

   stages{
      stage{'Deploy to Remote'}{
         steps{
            sh 'scp -r ${workspace}/* root@{staging_server}:/var/www/html/applicationdeploy/'
         }
      }
   }
}
