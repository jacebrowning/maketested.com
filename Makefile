.PHONY: all
all: build

.PHONY: install
install: public
	gitman install --fetch
public:
	git clone https://github.com/maketested/maketested.com public

.PHONY: run
run:
	hugo serve

.PHONY: build
build:
	hugo

.PHONY: upload
upload: build
	cd public && git commit && git push
