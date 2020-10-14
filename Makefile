#
# Makefile
# m001 MongoDB Basics
#

USERNAME=m001-student
PASSWORD=m001-mongodb-basics
CLUSTER=sandbox.5exqq.mongodb.net
DATABASE=sample_supplies

.PHONY: clean
clean:
	rm -rf dump/
	rm *.json

.PHONY: dump
dump:
	mongodump --uri "mongodb+srv://${USERNAME}:${PASSWORD}@${CLUSTER}/${DATABASE}"

.PHONY: export
export:
	mongoexport --uri="mongodb+srv://${USERNAME}:${PASSWORD}@${CLUSTER}/${DATABASE}" --collection=sales --out=sales.json
