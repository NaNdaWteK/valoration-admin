
# VALORATION APP [![Build Status](https://travis-ci.org/NaNdaWteK/valoration_app.svg?branch=master)](https://travis-ci.org/NaNdaWteK/valoration_app)

## NOT DOCKERIZED ENVIRONMENT

***View Gemfile to be ensure that you are installing the correct versions, if you don´t want problems, use our dockerized enviroment***

* Install Ruby, Ruby-dev and Ruby-rack:

***It's important to has at least ruby 2.4.0***

`sudo apt-get install ruby ruby-dev ruby-rack`

* Visit nokogiri page [nokogiri](http://www.nokogiri.org/tutorials/installing_nokogiri.html) and install dependencies, in debian/ubuntu:

```

sudo apt-get install build-essential patch
sudo apt-get install zlib1g-dev liblzma-dev libxslt-dev libxml2-dev
```

* For web-test install chromedriver (webdriver):

`sudo apt-get install chromium-chromedriver`

* Install gems Manualy

```

sudo gem install rerun
sudo gem install rspec
sudo gem install selenium-webdriver
sudo gem install capybara
sudo gem install chromedriver-helper
sudo gem install nokogiri
sudo gem install rack-test
sudo gem install jwt
```

## DOCKERIZED ENVIRONMENT

#### A. DOCKER INSTALATION:

1.- You must install Docker following the web instructions:

Link: [docker](https://www.docker.com)

2.- You must follow the steps in the docker web to be familiar with.

3.- Also follow the instructions 'Post-installation steps for Linux'.

4.- It's important to clean your docker images and containers when you are goin to start with docker.

    Install docker-compose.

Link: [docker install](https://docs.docker.com/compose/install/)


#### B. RUN DOCKER

1.- Download git:

`git clone https://github.com/NaNdaWteK/valoration_app.git`

2.- Start the docker-compose service to be able to run the test:

```

docker build -t valoration .
docker-compose build
```

3.- In one console, up the docker container, in other console run the tests:

* Console A:

`docker-compose up`

* Console B:

*** All test ***

`docker-compose run web rake test`

*** The unitarian spec tests ***

`docker-compose run web rake tdd`

*** The behavior spec tests ***

`docker-compose run web rake bdd`


*** To run a specific test with a tag ***

Add the tag to a specific test and run:

`docker-compose run web rake tag[example]`
