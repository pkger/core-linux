name = "openssl"
description = "TLS/SSL and crypto library"
homepage = "https://www.openssl.org"
license = "Apache-2.0"
manteiners = "Diogo-ss"
url = "https://github.com/openssl/openssl/releases/download/openssl-${{ version }}/openssl-${{ version }}.tar.gz"

checkver = {
  url = "https://api.github.com/repos/openssl/openssl/releases/latest",
  jsonpath = "tag_name",
  regex = "openssl%-(.+)",
}

function pre_build()
  system {
    "./config",
    "--prefix=" .. pkgdir,
    "shared",
    "zlib-dynamic",
  }
end

function build()
  system { "make" }
end

function install()
  system { "make", "install" }
end
