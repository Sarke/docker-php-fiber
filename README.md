# docker-php-fiber

[![Docker Pulls](https://img.shields.io/docker/pulls/sarkedev/php-fiber)](https://hub.docker.com/r/sarkedev/php-fiber)

A docker image, based on the offical PHP:8.0 images, that adds the [fiber extension](https://github.com/amphp/ext-fiber) ([RFC](https://wiki.php.net/rfc/fibers))

```
docker pull sarkedev/php-fiber
```

Use `php-fiber:zts` or `php-fiber:apache` tags as required.  No tag (or `latest`) is the default `cli`.

To run use the following command in your project root:

```
docker run --rm -v `pwd`:`pwd` -w `pwd` sarkedev/php-fiber php yourphpfile.php
```

## Specific versions

Images are also tagged with specific versions, such as:

`sarkedev/php-fiber:8.0.2-cli_fiber-2094c81`

This would be based on the offical `php:8.0.2-cli` image, and building [ext-fiber @ 2094c81](https://github.com/amphp/ext-fiber/tree/2094c8198aa6839c38e0229ab21dd1726583309d) (the commit before `FiberScheduler` was dropped).
