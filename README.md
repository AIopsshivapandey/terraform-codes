# Terraform Azure Resource Group – Creation Patterns

This repository contains different ways to create **Azure Resource Groups using Terraform**.

The examples start with a simple hardcoded Resource Group and gradually move toward more dynamic and reusable approaches using:

* Hardcoded values
* Terraform variables
* `.tfvars` variables
* `for_each`
* Lists
* Sets
* Maps
* Variables with lists
* Variables with maps
* Nested maps / objects
* Dynamic resource creation

The purpose of this exercise is to understand the different ways Terraform can be used to create **one or multiple Azure resources from the same resource block**.
