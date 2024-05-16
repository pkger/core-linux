name = "curl"
description = "A command line tool and library for transferring data with URL syntax."
homepage = "https://curl.se"
license = "MIT"
manteiners = "Diogo-ss"
url = "https://github.com/stunnel/static-curl/releases/download/${{ version }}/curl-linux-x86_64-8.7.1.tar.xz"

bin = "curl"

checkver = {
	url = "https://api.github.com/repos/stunnel/static-curl/releases/latest",
	jsonpath = "tag_name",
	regex = "[Vv]?(.+)",
}
