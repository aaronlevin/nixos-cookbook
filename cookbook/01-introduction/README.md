Introduction
============

Cookbooks for working with [Nix](https://nixos.org/nix/) and [NixOS](https://nixos.org/).

## Introduction to Nix

## Introduction to NixOS

## Helpful to Keep In Mind

When working on a project, it's helpful to keep in mind there are several different types of dependencies:

1. Build dependencies
2. Development dependencies
3. Runtime dependencies

*Build* dependencies refers to any packages and configuration required to build your project. For example, this may include `gcc`, your source code, and some libraries you need to link against. *Development dependencies* refers to the tools you need to develop your project and is quite often a superset of your build dependencies. *Development dependencies* may include things like static code analysis, editors, [MySQL Workbench](http://www.mysql.com/products/workbench/), etc. They are dependencies you need to get work done but not to actually build your project. Lastly, runtime dependencies are any dependencies you need at runtime. This may include libraries you dynamically link against or applications like [PostgreSQL](http://www.postgresql.org/) or [Redis](http://redis.io/).
