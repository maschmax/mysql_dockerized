#######################
## Help
#######################
.PHONY: help
help:
	@grep -B1 -E "^[a-zA-Z0-9_-]+\:" makefile \
	| grep -v -- -- \
	| sed 'N;s/\n/###/' \
	| sed -n 's/^#: \(.*\)###\(.*\):.*/\2###\1/p' \
	| column -t  -s '###'

#######################
## Commands
#######################
.PHONY: start
#: Start service
start:
	docker-compose up --build -d

.PHONY: stop
#: Stop service
stop:
	docker-compose down

.PHONY: stop-data
#: Stop service and remove data
stop-data:
	docker-compose down --volumes
