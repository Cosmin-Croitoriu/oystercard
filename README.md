# oystercard_challenge

Project Overview
---------

Approach
---------

This handrail has been taken from my incredible and extremely pragmatic Makers Academy mentor, Kim Diep. Thank you!

##CLIENT REQUIREMENTS



##USER STORIES

```
In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money
As a customer
I don't want to put too much money on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```

PROGRAM USAGE

* For the first iteration fo the product, this program will be usable in Interactive Ruby via the terminal using `irb`

## Challenge 1

**Interview Qs to answer**

* *Explain what RVM is and how you use it.*
  * RVM - Ruby Version manager. RVM is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.
* *Explain how Ruby gems help reuse code across projects.*
  * Gems can be used to extend or modify functionality in Ruby applications. Commonly they’re used to distribute reusable functionality that is shared with other Rubyists for use in their applications and libraries. Some gems provide command line utilities to help automate tasks and speed up your work. RSpec being an example!
* *Explain how do you use Bundler to manage Ruby gems.*
  * Use the following to install:
`gem install bundler`
  * Then specify dependencies in a Gemfile in your project's root. E.g.:
`source 'https://rubygems.org'
gem 'nokogiri'
gem 'rack', '~> 2.0.1'
gem 'rspec'`
  * Install all of the required gems:
`$ bundle install
$ git add Gemfile Gemfile.lock`
* *Explain the structure of a Gemfile.*
  * The following is the contents of a Gemfile:
`source 'https://rubygems.org'

gem 'rake'
gem 'rubocop', '0.60.0'

group :test do
 gem 'rspec'
 gem 'simplecov', require: false
 gem 'simplecov-console', require: false
end`

## Challenge 2

**Interview Qs to answer**

* *Explain RSpec file and folders naming conventions.*
  * Model specs reside in the spec/models directory
    Controller specs reside in the spec/controllers directory
    Request specs reside in the spec/requests directory
    Feature specs reside in the spec/features directory
    View specs reside in the spec/views directory
    Helper specs reside in the spec/helpers directory
    Mailer specs reside in the spec/mailers directory
    Routing specs reside in the spec/routing directory

* *What do default options in RSpec configuration file mean?*
  * colour formatting and requiring the spec_helper file in /spec

## Challenge 6

**Possible Interview Qs**

* *What are exceptions in Ruby? Why do they have messages associated with them?*

* *How can you check an expression raises an error with RSpec? Why do you have to pass the code as a block to do this?*

* *What are constants and how are they different from variables? Why use them?*

* *What does the DRY acronym mean? Why is it important to keep your code DRY?*

### STEP 1 - SKETCHING OUT THE DOMAIN MODEL

Translating the user stories into a domain model

### STEP 2 - SET OUT THE OBJECTS / CHARACTERISTICS / INTERACTIONS

From the user stories, set out the objects and their interactions (messages) to be modelled

### STEP 3 - DEFINE METHODS AND WHAT THEY DO

Now that the domain model, objects and their interactions are clear, set out the methods

### STEP 4 - DEFINE TEST CLASS

Now I set out the test cases

### STEP 5 - TDD PROCESS

Using the notes gathered in the above five steps, go through the TDD process

* USER STORY
* FEATURE TEST
* UNIT TEST
* CODE IMPLEMENTATION
* FEATURE TEST

## CLASSES/OBJECTS

* Card
* Money

## OBJECT CHARACTERISTICS

### Card

Has:

* #top_up
* `balance` variable

### OBJ_1

Has:

Methods:

### OBJ_2

Has a:

Methods:

## DOMAIN MODEL: MESSAGES/INTERACTIONS

(Screenshot of domain model)

## STORIES

### STORY 1

`In order to use public transport
As a customer
I want money on my card`

#### OBJECTS

* Card
* Money

#### MESSAGES

#### TEST CASES

### STORY 2

#### OBJECTS

#### MESSAGES

#### TEST CASES