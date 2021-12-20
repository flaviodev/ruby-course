1 - create project: rails new simple_cms -d mysql

2 - install mysql: brew install mysql  

3 - Bundle Configure mysql: bundle config --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include" 

4 - Bundle install: bundle install --path vendor/bundle

5 - Create database and user: 
    - create database simple_cms_development;
    - create user 'rails_user'@'localhost'; 
    - grant all privileges on simple_cms_development.* to 'rails_user'@'localhost';

6 - Set user and password for config/database.yml

7 - Rails webpacker install: rails webpacker:install

8 - Run server: rails s -b 0.0.0.0 -p 3100 -e development