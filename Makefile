
.PHONY: upload_bitstream pause make_bitstream build_and_upload

build_and_upload: build_bitstream pause upload_bitstream

upload_bitstream:
	./FABulous-configuration/UART/upload.py -b 46080 -p /dev/ttyUSB0 ./FABulous-VGA-demo/Test/build/top.bin

build_bitstream:
	cd ./FABulous-VGA-demo/Test && make build_test_design


pause:
	read -p "Restart Board and press enter to continue"
