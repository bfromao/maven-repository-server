# maven-repository-server

Maven repository server based on ngnix image 

## Usage

##### Hosting some simple static server

    docker run --name mvn-repo-srv -v /some/content:/usr/share/nginx/html:ro -d maven-repository-server

##### Exposing external port

expose port 8080 example

    docker run --name mvn-repo-srv -p 8080:80 -d maven-repository-server

## POM Config

#### Artifact 

add inside build configuration:

	<build>
	    <extensions>
            <extension>
                <groupId>org.apache.maven.wagon</groupId>
                <artifactId>wagon-http</artifactId>
                <version>3.2.0</version>
            </extension>
        </extensions>
	   ......
	</build>

add after build configuration :

	<distributionManagement>
		<repository>
			<id>repository</id>
			<url>http://localhost/repository</url>
		</repository>
	</distributionManagement>


#### Consumer

add after build configuration :

    <repositories>
        <repository>
            <id>lrepository</id>
            <url>http://localhost/repository</url>
        </repository>
    </repositories>
