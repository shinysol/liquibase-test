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

### changelogs

- /db/changelog/xml
- /db/changelog/sql
- /db/changelog/xml_sql
- /db/changelog/json_sql
