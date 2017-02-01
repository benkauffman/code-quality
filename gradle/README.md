Containing plugins and structure to setup and run reports on project using gradle framework  

*Plugins Used*  
* jetty _(only needed if API utilizes jetty)_  
* groovy _(used for build logic)_  
* pmd  
* findbugs  
* checkstyles (google standards with checkstyle_google.xml) 
* cobertura  

Compile and review with `.\gradlew clean build test integrationTest` reports will output to `${projectRoot}/build/reports`  