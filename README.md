# ATM Machine Web App
[![NPM version][shield-npm]](#)
[![Build status][shield-build]](#)
[![Code coverage][shield-coverage]](#)
[![Dependencies][shield-dependencies]](#)
[![snyk][snyk-vulnerabilities]](https://snyk.io/test/npm/requirements)
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)

ATM Machine Web App is a simulation for Automated Teller Machine from which user can add money, withdraw money and view account balance.


## Table of contents

1. [Ruby on Rails Installation](#ruby-on-rails-installation)
2. [Getting Started](#getting-started)
3. [Features](#features)
4. [Installations](#installation)
5. [Usage](#usage)
6. [View Reports](#to-view-reports)
7. [Directory Structure](#directory-structure)
    1. [Collection Metadata](#about-collectionmetadata-directory)
    2. [Configuration](#about-configuration-directory)
    3. [Input](#about-input-directory)
    4. [Src](#about-src-directory)
    5. [Templates](#about-templates-directory)
8. [Including a new collection in framework](#changes-for-including-a-new-collection-in-framework)
9. [External Reporters](#external-reporters)
    1. [Using External Reporters](#using-external-reporters)
    2. [Creating Your Own Reporter](#creating-your-own-reporter)


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
It should output something like this - ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]


2. Install Sqlite3

```bash
sudo apt install sqlite3
```

3. Install Ruby Gems

- Download Ruby Gems from here - http://rubygems.org/pages/download
- Extract the ruby gems tar file - tar xvfz rubygems-1.3.7.tgz
- If you previously had RubyGems installed via apt - sudo apt-get remove rubygems
- Install Ruby Gems - cd rubygems-1.3.7 && sudo ruby setup.rb


4. Install Yarn

```bash
sudo apt-get install yarn
```

5. Install Rails

```bash
sudo gem install rails
```

## Features

- Run given collection(s) with input parameters provided with report generation
- Create a new collection with different variations of parameters

## Installation

The easiest way to install Newman is using NPM. If you have Node.js installed, it is most likely that you have NPM installed as well.

```bash
npm install -g newman
```

This installs Newman globally on your system allowing you to run it from anywhere. If you want to install it locally, Just remove the `-g` flag.

To generate reports in HTML, you need to install another npm package.

```bash
npm install -g newman-reporter-htmlextra
```




  [Web Server for Chrome]: <https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb?utm_source=chrome-app-launcher-info-dialog>   
[shield-coverage]: https://img.shields.io/badge/coverage-100%25-brightgreen.svg
[shield-dependencies]: https://img.shields.io/badge/dependencies-up%20to%20date-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-node]: https://img.shields.io/badge/node.js%20support-0.10–5-brightgreen.svg
[shield-npm]: https://img.shields.io/badge/npm-v3.2.0-blue.svg
[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[snyk-vulnerabilities]: https://snyk.io/test/npm/requirements/badge.svg?style=flat-square
