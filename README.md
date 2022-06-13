# ATM Machine Web App
[![Dependencies][shield-dependencies]](#)
[![snyk][snyk-vulnerabilities]](https://snyk.io/test/npm/requirements)
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)

ATM Machine Web App is a simulation for Automated Teller Machine built on Ruby on Rails Framework.


## Table of contents

1. [Ruby on Rails Installation](#ruby-on-rails-installation)
2. [Features](#features)
3. [Usage](#usage)
4. [Data Seeding](#data-seeding)
5. [Workflow](#workflow)
    1. [Sign Up ](#sign-up)
    2. [Sign In](#sign-in)
    3. [Create Account](#create-account)
    4. [Check Balance](#check-balance)
    5. [Withdraw](#withdraw)
    6. [Deposit](#deposit)
    7. [Other Account Functionalities](#other-account-functionalities)
6. [Troublshooting ROR Installation](#troubleshooting-ror-installation)


## Ruby on Rails Installation

The OS used to develop the project was Ubuntu(Linux). The following steps mentioned here are corresponding to Ubuntu as OS.

1. Install Ruby

```bash
sudo apt-get install ruby-full
```
Check if ruby is installed correctly
```bash
ruby --version
```
It should output something like this - `ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]`


2. Install Sqlite3

```bash
sudo apt install sqlite3
```
Check if Sqlite3 is installed correctly
```bash
sqlite3 --version
```
It should output something like this - `3.22.0 2018-01-22 18:45:57`


3. Install Ruby Gems

- Download Ruby Gems from here - http://rubygems.org/pages/download
- Extract the ruby gems tar file - `tar xvfz rubygems-1.3.7.tgz`
- If you previously had RubyGems installed via apt - `sudo apt-get remove rubygems`
- Install Ruby Gems - `cd rubygems-1.3.7 && sudo ruby setup.rb`

Check if Ruby is installed correctly
```bash
ruby --version
```
It should output something like this - `ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]`


4. Install Yarn

```bash
sudo apt-get install yarn
```
Check if Yarn is installed correctly
```bash
yarn --version
```
It should output something like this - `1.22.19`

5. Install Rails

```bash
sudo gem install rails
```
Check if Rails is installed correctly
```bash
rails --version
```
It should output something like this - `Rails 6.1.6`

## Features

- Create User With Sign Up.
- Create Multiple Accounts for the User.
- Deposit, Withdraw and Show Balance for the given user accounts.


## Usage

To use the project you need to go to atm directory. 

Firstly, you need to install all the dependencies required to run the project(gems)
```bash
bundle install
```

Create database using rails migrate command
```bash
rails db:migrate
```

Then start the server using following command
```bash
rails s
```

You can view all the routes present through the following command(In different terminal).

```bash
rails router
```

## Data Seeding

For starting the project, you may need to add data to view the project. You can seed those data into database by running the below script. 

```bash
rails db:seed
```
#### Note that generating data through seeding is not necessary. You can youself generate data by creating user accounts and play around!.




## Workflow

### Sign Up 
- To start with, go to Sign In Tab present in Navigation. 
- Insert User Email and Password. Make sure password is greater than or equal to 6 digits

### Sign In
- Then you can login to your user account with the credentials given during sign up workflow
- You can access all the user properties only if you are logged in. 

### Create Account
- User can create account using the New Account button present in the index page.
- User should provide name of the account(like - Bussiness Account) and also choose the account type(Current or Savings)
- User should also input the initial balance he wants to put in the account. 

### Check Balance
- User can check balance of the account by clicking on check balance button of the account. 

### Withdraw
- User can withdraw amount from the account by clicking Withdraw button of the account. 
- Note that user should not withdraw more amount than present in the accont. Else machine will throw a error.

### Deposit
- User can desposit amount to the account by clicking Deposit button of the account.

### Other Account Functionalities
- User can change account details such as name or account type. He cannot edit the balance present in the accout. 





## Troubleshooting ROR Installation

These are the workarounds I used to troubleshoot ROR Installation. Hope this helps you.

1. Upgrade apt
``` bash
sudo apt-get upgrade
```
2. If you get install <=1 version yarn warning during execution of rails server, you can perform following steps
```bash
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
```

3. If you get webpacker error, re-install using the following command
```bash
rails webpacker:install
```








  [Web Server for Chrome]: <https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb?utm_source=chrome-app-launcher-info-dialog>   
[shield-coverage]: https://img.shields.io/badge/coverage-100%25-brightgreen.svg
[shield-dependencies]: https://img.shields.io/badge/dependencies-up%20to%20date-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-node]: https://img.shields.io/badge/node.js%20support-0.10–5-brightgreen.svg
[shield-npm]: https://img.shields.io/badge/npm-v3.2.0-blue.svg
[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[snyk-vulnerabilities]: https://snyk.io/test/npm/requirements/badge.svg?style=flat-square
