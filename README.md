# assement-101

Links: 

https://www.cloudsigma.com/deploying-laravel-nginx-and-mysql-with-docker-compose

https://www.twilio.com/blog/get-started-docker-laravel

Steps are as follows:
1. Create two instances using Terraform.

2. Configured MySQL from Ansible and provided non-root user with database. 

3. Configured docker and docker-compose in second EC2 machine through Ansible.

4. Configured Laravel, Nginx in docker container and up using command "docker-compose up --build -d". (.env file also added with remote DB connection details)

5. DB migrated: "docker-compose exec app php artisan migrate"

6. Config cache for cache clearance: "docker-compose exec app php artisan config:cache"

7. Finally, Working URL: http://13.232.178.10 .

Note: some of the results and output are attached with this repository.

Thank you. Peace !!!
