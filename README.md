# Debian Packages

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
cd /projects/github/opendk/deb
dput ppa:opendk/databases derby-server_0.1-10_source.changes
dput ppa:opendk/databases h2-server_0.1-10_source.changes
dput ppa:opendk/databases hsqldb-server_0.1-10_source.changes
```
