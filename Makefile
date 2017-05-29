.SILENT :
.PHONY : test-alpine test


update-dependencies:
	test/requirements/build.sh

test-alpine: update-dependencies
	docker build -f Dockerfile -t cryptoplay/alphine-nginx-proxy:test .
	test/pytest.sh

test: test-alpine
