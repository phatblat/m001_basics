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

.PHONY: dump
dump:
	mongodump --uri "mongodb+srv://${USERNAME}:${PASSWORD}@${CLUSTER}/${DATABASE}"
