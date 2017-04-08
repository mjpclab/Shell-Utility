SOURCE_BIN=bin/
TARGET_BIN=/usr/local/bin/

install:
	cp \
		$(SOURCE_BIN)cpiso \
		$(SOURCE_BIN)rsynciso \
		$(SOURCE_BIN)fn-case \
		$(SOURCE_BIN)fn-tr \
		$(SOURCE_BIN)git-each-repo \
	$(TARGET_BIN);

	
