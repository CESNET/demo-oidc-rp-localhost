# OIDC Relying Party Demo on localhost

This repo contains a demo application for the lecture "Perun AAI for service administrators". See the lecture slides and video at [wiki](https://github.com/CESNET/demo-oidc-rp-localhost/wiki).

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
docker run -it --rm -p 8080:8080 demo-oidc-rp-localhost:latest
```
Visit http://localhost:8080/ for the demo.

For changes, modify the file [000-default.conf](apache/000-default.conf), rebuild image and re-create container.

Links to documentation:
 * [Implementing Service Provider](https://perunaai.atlassian.net/wiki/spaces/EINFRACZ/pages/7929901/Implementing+service+provider) (Perun AAI docs)
 * mod_auth_openidc directives in [auth_openidc.conf](https://github.com/OpenIDC/mod_auth_openidc/blob/master/auth_openidc.conf)
 * [mod_auth_openidc Authorization](https://github.com/OpenIDC/mod_auth_openidc/wiki/Authorization)
 * [mod_authz_core](https://httpd.apache.org/docs/2.4/mod/mod_authz_core.html)
 * [Dockerfile overview](https://docs.docker.com/build/concepts/dockerfile/)

