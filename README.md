## Liquibase changelog 테스트

### command

- liquibase 실행(Docker)
  - MariaDB 기준
```Bash
docker run --rm -v "$(pwd)/db/changelog:/db/changelog" liquibase \
	--searchPath=/db/changelog --changeLogFile=master.xml \
	--url="jdbc:mariadb://<ip>:<port>/test" --username=root --password= \
	--driver=org.mariadb.jdbc.Driver validate
```

### changelog

- xml
- sql
- xml_sql
- json_sql
