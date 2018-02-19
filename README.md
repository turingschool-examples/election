# README

## Overview

A repository with information from the 2016 election pulled from [this Kaggle dataset](https://www.kaggle.com/benhamner/2016-us-election).

## Setup

```
$ bundle
$ rake db:create db:migrate db:seed
```

## Test Suite

There is an existing test suite with some model tests already implemented. Run this suite with:

```
$ rspec
```

We recommend that you attempt to resolve the failing specs in the following order:

* County
* PrimaryResult
* Candidate
