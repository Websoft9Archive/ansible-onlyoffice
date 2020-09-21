# More

Each of the following solutions has been proved to be effective and we hope it can give you help.

## Configuration 

Refer to the official docs: https://www.onlyoffice.com/configure.html

## Binding Domain

The precondition for binding a domain is that ONLYOFFICE can accessed by domain name.

When there is only one website on the server, you can visit the website without binding domain. While considering the server security and subsequent maintenance, **Binding Domain** is necessary.

Steps for binding ONLYOFFICE domain are as follows:

1. Connect your Cloud Server;
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx),and change the **server_name**'s value to your domain name.
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # change it into your domain name
   ...
   }
   ```
