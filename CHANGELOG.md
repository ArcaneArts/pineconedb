# 1.0.5
* Write units

# 1.0.4
* Allow searching with a vector

# 1.0.3
* Allow embedding directly and upserting vectors 

# 1.0.2
* Allow reranking to be disabled on SearchText.basic

# 1.0.1
* Resource exhausted support for upsert text

# 1.0.0 (Rewrite)
* Added support to upsert text in namespace
* Added support to query text in namespace
* Added support to delete vectors by id or all in namespace
* Added support to fetch vectors by ids in namespace 
* Added support to list vector ids by prefix in namespace

---
 
Below is from the pub package pinecone. These changes are no longer in pineconedb

## 0.7.2

* Client generation using latest `openapi_spec` package (v0.7.8)

## 0.7.1

* Relax `meta` version requirement

## 0.7.0

* Client generation using latest `openapi_spec` package (v0.7.6)
* Breaking: `PodType` enum values are now camel case

## 0.6.0

* Client generation using latest `openapi_spec` package (v0.6.0)
* Breaking: `host` is now changed to `baseUrl` in generated client

## 0.5.5

* Client generation using latest `openapi_spec` package (v0.5.13)
* Fix static analysis warning in generated files

## 0.5.4

* Client generation using latest `openapi_spec` package (v0.5.9)

## 0.5.3

* Fix missing security scheme in host for client generation

## 0.5.2

* Client generation using latest `openapi_spec` package (v0.5.3)

## 0.5.1

* Remove trailing slash from /databases endpoint

## 0.5.0

* Client generation using latest `openapi_spec` package

## 0.4.1

* Make dependencies flexible

## 0.4.0

* Update to latest `openapi_spec` package
* Improved schema/client generation

## 0.3.0

* Update for Dart 3 support
* Use `openapi_spec` package to generate schema/client
* **Breaking** New client interface to match `openapi_spec` generated code

## 0.2.0

* Update documentation and API spec

## 0.1.0

* Initial release of `pinecone`
