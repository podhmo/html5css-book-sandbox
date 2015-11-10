DOWNLOAD_DIR ?= ./downloads
WWW_OPEN ?= open

default: mcoding
	echo ok

${DOWNLOAD_DIR}/mcoding.zip:
	mkdir -p ${DOWNLOAD_DIR}
	wget "http://www.shoeisha.co.jp/book/download/1772/read" -O ${DOWNLOAD_DIR}/mcoding.zip

mcoding:
	unzip ${DOWNLOAD_DIR}/mcoding.zip

demo1:
	${WWW_OPEN} "http://www.shoeisha.co.jp/book/download/1768/read"

demo2:
	${WWW_OPEN} "http://www.shoeisha.co.jp/book/download/1769/read"

demo3:
	${WWW_OPEN} "http://www.shoeisha.co.jp/book/download/1770/read"

.PHONY: demo1 demo2 demo3
