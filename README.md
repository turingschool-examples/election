# Election

## Overview

A repository with information from the 2016 election pulled from [this Kaggle dataset](https://www.kaggle.com/benhamner/2016-us-election).

Your job is to fix the failing tests in this application by writing new methods to fit the needs outlined in the model specs. Some of the methods will be class methods, while others will be instance methods. 

## Setup

```bash
$ bundle install
$ rails db:{create,migrate,seed}
```

**NOTE!** There are about 24,000 primary results that will be imported when you run the `seed` command. This may take a few minutes to complete. Watch your Terminal for the running output. 

## Test Suite

There is an existing test suite with some model tests already implemented. Run this suite with:

```bash
bundle exec rspec
```

We recommend that you attempt to resolve the failing specs in the following order:

* County
* PrimaryResult
* Candidate

When you begin, start with  
```bash
bundle exec rspec spec/models/county_spec.rb
```
Let the errors in each test guide your implementation. 


## Solutions
When you are finished, you may opt to compare your answers to our [`solutions`](https://github.com/turingschool-examples/election/tree/solutions) branch in your browser. 