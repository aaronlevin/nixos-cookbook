Introduction
============

Cookbooks for working with [Nix](https://nixos.org/nix/) and [NixOS](https://nixos.org/).

## Introduction to Nix

Nix is the named used for 2 different things. The first one, is the daemon which is used to do the build on behalf of users and to manage the nix store.  The second, is a programming language which is used to abstract over the recipes used by the build daemon. 

The Nix daemon is responsible for building recipes, independently of the language used to produce them.  A recipe can be recorded by a tools, such as the Nix language interpreter, or [Guix](www.gnu.org/s/guix).  The daemon is responsible of the consistency of the nix store, which implies that a package is not mutable once installed, and it cannot be removed if it is referenced.  The consistency makes Nix reliable.

The Nix language is a pure functional programming language.  Its pure aspect is essential to ensure that one evaluation will produce the same recipes over time.  This leads to the reproducible aspect of Nix.

## Introduction to NixOS

NixOS is a Linux distribution written using the Nix language.  The main idea is that all the configuration files are produced by a recipe.  A configuration might refer to the installation path of a program.  Such reference is converted into a dependency for the recipe used for building the configuration file.  By design, NixOS inherits from all properties of Nix.

In addition, NixOS benefits from a module system which fosters a declarative aspect of the configuration.  Every hardware aspect, service, file system layout are managed in modules.  With the properties inherited from Nix, NixOS can be claimed as a reliable and reproducible configuration management system.

## Helpful to Keep In Mind

When working on a project, it's helpful to keep in mind there are several different types of dependencies:

1. Build dependencies
2. Development dependencies
3. Runtime dependencies

*Build* dependencies refers to any packages and configuration required to build your project. For example, this may include `gcc`, your source code, and some libraries you need to link against. *Development dependencies* refers to the tools you need to develop your project and is quite often a superset of your build dependencies. *Development dependencies* may include things like static code analysis, editors, [MySQL Workbench](http://www.mysql.com/products/workbench/), etc. They are dependencies you need to get work done but not to actually build your project. Lastly, runtime dependencies are any dependencies you need at runtime. This may include libraries you dynamically link against or applications like [PostgreSQL](http://www.postgresql.org/) or [Redis](http://redis.io/).
