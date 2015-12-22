docker-gerrit
=============

Build a Docker container with the gerrit code review system

Built on top of Ubuntu Trusty (14.04.1) and gerrit 2.9.3

    $ docker run -P -d larrycai/gerrit # wait for a while to be started.

The authType can be set via environment `AUTH_TYPE` like OpenID, default is `DEVELOPMENT_BECOME_ANY_ACCOUNT` , see [official documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.9.3/config-gerrit.html#auth)

	$ docker run -P -d -e AUTH_TYPE=OpenID -t larrycai/gerrit