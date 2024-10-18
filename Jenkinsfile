pipeline {
    agent any

    stages {
        stage('GIT PULL') {
            steps {
                git branch: "main", url: 'https://github.com/Erluan/flutter-modular-app-template.git'
            }
        }
        stage('TEST') {
            steps {
                sh 'flutter test'
            }
        }
        stage("build") {
            steps {
                sh 'bundle exec fastlane build_tests'
            }
        }
        stage("test") {
            steps {
                sh 'xcrun simctl shutdown all'
                sh 'xcrun simctl erase all'
                sh 'bundle exec fastlane test'
            }
        }

        stage('BUILD ANDROID') {
            steps {
                sh '''
                  #!/bin/sh
                  flutter build apk --debug
                  '''
            }
        }

        stage('BUILD iOS') {
              steps {
                  sh "flutter build ios --release --no-codesign"
              }
        }

        stage('Deploy') {
            agent {
                label 'OSX && xcode'
            }
            steps {
                deleteDir()
                checkout([$class: 'GitSCM',
                    userRemoteConfigs: [[
                        url: 'ssh://git@myhost.com:7999/myapp.git',
                        credentialsId: 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee'
                    ]],
                    branches: [[name: params.ref]],
                    extensions: [[$class: 'SubmoduleOption', parentCredentials: true, recursiveSubmodules: true]]
                ])

                sh 'bash install_fastlane.sh'
                sh "bundle exec fastlane build ${params.buildopts}"
                sh 'bundle exec fastlane run upload_to_testflight ipa:output/ExampleApp.ipa'
            }
        }
    }
}