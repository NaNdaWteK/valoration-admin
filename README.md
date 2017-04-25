
# VALORATION APP [![Build Status](https://travis-ci.org/NaNdaWteK/valoration_app.svg?branch=master)](https://travis-ci.org/NaNdaWteK/valoration_app)

## NOT DOCKERIZED ENVIRONMENT

* Install Ruby, Ruby-dev and Ruby-rack:

`sudo apt-get install ruby ruby-dev ruby-rack`

* Visit nokogiri page ( http://www.nokogiri.org/tutorials/installing_nokogiri.html ) and install dependencies, in debian/ubuntu:

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
```

## DOCKERIZED ENVIRONMENT

1.- Download git:

`git clone https://github.com/devscola/consensus`

2.- Start the docker-compose service to be able to run the test:

```

docker build -t consensus .
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
