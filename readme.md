## Description

Project with laravel blog-app to create posts, delete, update.

## Author
Abel García Luis

## Run the App
<li>Install Composer,Laravel and Xampp in your local machine.</li>
<li>Start Xampp (apache and mysql).</li>
<li>Go C:\xampp\apache\conf\extra and edit httpd-vhosts.conf.</li>
<li>In httpd-vhosts.conf create two virtualhosts:<li>
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
<li>Next go to C:\Windows\System32\drivers\etc and edit hosts file writing:</li>
```
127.0.0.1 localhost
127.0.0.1 blog-app.dev
```
<li>Finally restart the apache server and go to browser searching blog-app.dev</li>

## Database
The sql dump is in _SQL/blog-app.sql
