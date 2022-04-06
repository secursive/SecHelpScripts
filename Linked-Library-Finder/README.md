## Purpose

When researching a CVE related to a dynamically linked library, e.g. libnss CVE-2021-43527, it is helpful to identify who is using that library (or other libraries linking to this library).

This script helps identify that on a unix like filesystem, e.g. Linux or Mac OS.

## Usage

```LIBNAME=[libYouAreLookingFor] ./ldd-finder.sh```

For example,

```LIBNAME=libnss ./ldd-finder.sh```
