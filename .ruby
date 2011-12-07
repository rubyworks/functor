---
source:
- var
authors:
- name: Thomas Sawyer
  email: transfire@gmail.com
copyrights: []
replacements: []
alternatives: []
requirements:
- name: detroit
  groups:
  - build
  development: true
- name: lemon
  groups:
  - test
  development: true
- name: ae
  groups:
  - test
  development: true
dependencies: []
conflicts: []
repositories:
- uri: git://github.com/proutils/functor.git
  scm: git
  name: upstream
resources:
  home: http://rubyworks.github.com/functor
  code: http://github.com/rubyworks/functor
  mail: http://groups.google.com/group/rubyworks-mailinglist
extra: {}
load_path:
- lib
revision: 0
created: '2004-03-04'
summary: Higher-Order Functions for Ruby
title: Functor
version: 1.0.0
name: functor
description: ! 'By definition a Functor is simply a first class method, but these
  are common

  in the form of Method and Proc. So for Ruby a Functor is a more specialized

  as a Higher-order function or Metafunction. Essentally, a Functor can vary

  its behavior accorrding to the operation applied to it.'
date: '2011-12-07'
