## Description

Project with laravel blog-app to create posts, delete and update.

## Author
Abel García Luis

## Run the App
* Install Composer,Laravel and Xampp in your local machine.
* Start Xampp (apache and mysql).</li>
* Go C:\xampp\apache\conf\extra and edit httpd-vhosts.conf.
* In httpd-vhosts.conf create two virtualhosts:
```
<VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs"
    ServerName localhost
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs/blog-app/public"
    ServerName blog-app.dev
</VirtualHost>
```
* Next go to C:\Windows\System32\drivers\etc and edit hosts file writing:
```
127.0.0.1 localhost
127.0.0.1 blog-app.dev
```
* Finally restart the apache server and go to browser searching blog-app.dev

## Database
The sql dump is in _SQL/blog-app.sql
