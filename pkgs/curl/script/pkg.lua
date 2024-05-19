name = "curl"
description = "A command line tool and library for transferring data with URL syntax."
homepage = "https://curl.se"
license = "MIT"
manteiners = "Diogo-ss"

url = "https://curl.se/download/curl-${{ version }}.tar.gz"

checkver = {
  url = "https://curl.se/download.html",
  -- regex = "<b>curl%s+(%d+%.%d+%.%d+)</b>",
  regex = "<b>curl (.-)</b>",
}

function pre_install()
  system {
    "./configure",
    "--disable-debug",
    "--disable-dependency-tracking",
    "--disable-silent-rules",
    "--prefix=" .. pkgdir,
    "--with-openssl",
    "--without-ca-bundle",
    "--without-ca-path",
    "--with-ca-fallback",
    "--with-secure-transport",
    "--with-default-ssl-backend=openssl",
    "--with-libidn2",
    "--with-libssh2",
    "--without-libpsl",
  }
end

function install()
  system { "make", "install" }
end
