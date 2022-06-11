# ATM Machine Web App
[![NPM version][shield-npm]](#)
[![Build status][shield-build]](#)
[![Code coverage][shield-coverage]](#)
[![Dependencies][shield-dependencies]](#)
[![snyk][snyk-vulnerabilities]](https://snyk.io/test/npm/requirements)
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)

ATM Machine Web App is a simulation for Automated Teller Machine from which user can add money, withdraw money and view account balance


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

## Usage

### `sudo bash executor.sh [options]`

- `-c <flag>`, `--createCollection <flag>`<br />
  Flag to create a collection. This precedes collectionLocation and variationMappingLocation.

- `-e <flag>`, `--executeCollection <flag>`<br />
  Flag to run a collection. This precedes suite.

- `-s <name>`, `--suite <name>`<br />
  Specify suites that you need to execute. You can provide single or multiple with comma separated suite name.<br />
  Suite name can be originated from collectionMetadata directory. Example of suite name - <suiteName>Metadata.json

- `-f <name>`, `--folder <name>`<br />
  Folder you want to execute in given collection(Optional), eg: 'Add Content'

- `-p <flag>`, `--positive <flag>`<br />
  Flag to enable to only run positive APIs (Optional)

- `-x <source>`, `--collectionLocation <source>`<br />
  Specify the file path for collection.<br />
  This collection will be refactored with variation mappings file given.

- `-v <source>`, `--variationMappingLocation <source>`<br />
  Specify the file path for variationMapping.<br />
  This file should map variations from variationDB with key value for a
  given API. You can refer to variationMappingTemplate.json file in templates for sample.

- `-o <source>`, `--outputLocation <source>`<br />
  Location of new collection to be created.(Optional) Default location is in the repo as collection.json

- `-n <name>`, `--newCollection <name>`<br />
  Name of new collection to be added to Framework eg: 'mySuite'. You can make metadata file with componentName and it will take values from it and make directories accordingly.

- `--componentName <name>`<br />
  Component Name or Folder Structure for new suite to be added.<br /> Eg - "applications/AP/ET/"

- `--envLocation <source>`<br />
  Location of Collection Environment File.<br />
  It then parses it to form input.json and placeHolderMappings.json file.<br />
  Eg. "/home/siyer/collectionEnv.json"

- `-h`, `--help`<br />
  Show command line help, including a list of options, and sample use cases. 

###Sample Usage - 
1. For Collection Creator
```bash
bash executor.sh -c -x "/home/siyer/Documents/tempCollection.json" -v "/home/siyer/Documents/variationMappings.json" -o "/home/siyer/Documents/collection.json"
```

2. For Collection Executor
```bash
bash executor.sh -e -s "serviceET"
```
Reports generations directory is displayed on console


3. For Creating Structure for new Collection to Framework. Provide Collection Environment and Collection Json file.
```bash
bash executor.sh -n "test" --componentName "applications/AP/ET/" -x "/home/siyer/collection.json" --envLocation "/home/siyer/collectionEnv.json"
```

4. For Running only positive flow of a collection 
```bash
bash executor.sh -e -p -s "serviceET"
```

5. For executing only a folder from a suite 
```bash
bash executor.sh -e -s "serviceET" -f "myFolderName"
```


## To View Reports

Head over to directory mentioned on console for logs. You can find logs in 3 formats
- Console Log(Logs that are displayed on console)
- Json Log(Output that can be displayed on Json with all information)
- HTML Log(Analysis of Runner displayed on HTML page)\
You can also find finalOutput.json file for combined output for all collections


## Directory Structure
***
### About ```collectionMetadata/``` directory:

- This directory contains metadata for each collection with names as below:\
          "collectionName"Metadata.json
- It contains details about data files that needs to be iterated in a collection while running it.
- Data Files are optional. In that case, make the list as empty.


***
### About ```configuration/``` directory:

- This directory contains config files to store file locations, placeholder mappings, etc. 
- This directory is not intended to be changed while running a collection. This is created while creating/adding a new collection to framework.


***
### About ```input/``` directory:

- This directory contains json files which are input to collection.
- This needs to be changed while running a collection.


### About ```src/``` directory:

- This directory contains scripts to run the collection, initialise output, storage of logs, etc. 
- Collections are stored in collection directory.


### About ```templates/``` directory:

- This directory contains data files, env file templates which contains placeholder that need to be replaced by value during execution.
- These placeholders should be present in placeHolderMapping file in configurations.


***

## Changes for including a new collection in framework

For adding a collection/suite to the framework you can execute following command. It automatically creates required files mentioned below

```bash
bash executor.sh -n "test" --componentName "applications/AP/ET/" -x "/home/siyer/collection.json" --envLocation "/home/siyer/collectionEnv.json"
```
Refer [this](#usage) 

Else you can manually follow the procedure below - 

1. Create a file named ```[collectionName]Metadata.json``` in collectionMetadata/ folder.

2. It should contain a field named ```componentName```. It should contain the location of input and configuration for that collection.\
       Example - applications/AP/ET/(for ET)\
    It should also contain a field for dataFiles for different combinations of data files as a list.\
       Example - "dataFiles": ["shared1","dedicated1"]

3. Under /configurations the user should place 2 files. namely - \
        i. ```config.json``` (should contain configuration such as file locations which user does not need to change while running the collection)\
       ii. ```placeHolderMappings.json``` (should contain mappings for placeholders which are present in env/data file with correct variable name in input)\
      iii. ```environment.json```  (should contain information regarding different development environment and their respective configurations)

4. Under /input user should place 1 file. namely-\
      i. ```input.json``` (should contain values for all variables declared in data file or env file with a placeholder.)
      
5. In ```config.json``` file under configurations/, user should place following key with respective value\
     i. “collection“ should contain collection location\
     ii. “envFile“ should contain location of env files\
     iii. It should contain all dataInput json file paths mentioned in the metadata file.
#### Note that placeHolderMappings.json should be in sync with the input.json file.

***





  [Web Server for Chrome]: <https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb?utm_source=chrome-app-launcher-info-dialog>   
[shield-coverage]: https://img.shields.io/badge/coverage-100%25-brightgreen.svg
[shield-dependencies]: https://img.shields.io/badge/dependencies-up%20to%20date-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-node]: https://img.shields.io/badge/node.js%20support-0.10–5-brightgreen.svg
[shield-npm]: https://img.shields.io/badge/npm-v3.2.0-blue.svg
[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[snyk-vulnerabilities]: https://snyk.io/test/npm/requirements/badge.svg?style=flat-square
