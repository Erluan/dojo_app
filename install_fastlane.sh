#!/bin/bash

! grep -q fastlane Gemfile &&\
    echo 'gem "fastlane"' >> Gemfile &&\
    echo 'gem "fastlane-plugin-trainer"' >> Gemfile
bundle install