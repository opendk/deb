# deb
Debian Packages

## Build/upload
```
su nicolamarangoni
cd /projects/github/opendk/deb
git pull
cd /projects/github/opendk/deb/derby-server
debuild -S
cd /projects/github/opendk/deb/h2-server
debuild -S
cd /projects/github/opendk/deb/hsqldb-server
debuild -S

```
