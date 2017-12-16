
# Lab42::OpenObject

[![Gem Version](https://badge.fury.io/rb/lab42_open_object.svg)](http://badge.fury.io/rb/lab42_open_object)
[![Build Status](https://travis-ci.org/RobertDober/lab42_open_object.svg?branch=master)](https://travis-ci.org/RobertDober/lab42_open_object)
[![Code Climate](https://codeclimate.com/github/RobertDober/lab42_open_object/badges/gpa.svg)](https://codeclimate.com/github/RobertDober/lab42_open_object)
[![Issue Count](https://codeclimate.com/github/RobertDober/lab42_open_object/badges/issue_count.svg)](https://codeclimate.com/github/RobertDober/lab42_open_object)
[![Test Coverage](https://codeclimate.com/github/RobertDober/lab42_open_object/badges/coverage.svg)](https://codeclimate.com/github/RobertDober/lab42_open_object)

OpenObject an Immutable OpenStruct Enhancement

## Usage:

```ruby literate
  require 'lab42/open_object'

  o = OpenObject.new a: 42
  o.a # => 42
  o[:a] # => 42
  o.keys # => [:a]
  o.values # => [42]

  p = o.merge a: 43, b: 44

  p.a # => 43
  p.b # => 44
  o.a # => 42 !!!
```
