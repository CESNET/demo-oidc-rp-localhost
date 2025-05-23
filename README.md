# OIDC Relying Party Demo on localhost

Prerequisites:

 - Docker
 - unused TCP port 8080

Get code:

```bash
git clone https://github.com/CESNET/demo-oidc-rp-localhost.git
cd demo-oidc-rp-localhost/apache
```

Build Docker image with Apache HTTPD and mod_auth_openidc:
```bash
docker build -t demo-oidc-rp-localhost:latest .
```
Run the image as container:
```bash
docker run -it -p 8080:8080 demo-oidc-rp-localhost:latest
```
Visit http://localhost:8080/ 

For changes, modify the file [000-default.conf](apache/000-default.conf), rebuild image and re-create container.

