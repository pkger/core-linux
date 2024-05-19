name = "wget"
description = "Wget is a free software package for retrieving files using HTTP, HTTPS, FTP and FTPS"
homepage = "https://www.gnu.org/software/wget/"
license = "GPL-3.0-or-later"
manteiners = "Diogo-ss"
url = "https://ftp.gnu.org/gnu/wget/wget-${{ version }}.tar.gz"
version = "1.24.5"

checkver = {
  url = "https://www.gnu.org/software/wget/manual/",
  regex = "<h2>wget%s%-%s(.+)</h2>",
}

depends = {
  "libidn2",
  "openssl@3.3.0",
  -- build
  "pkg-config",
}

function pre_build()
  system {
    "./configure",
    "--prefix=" .. pkgdir,
    "--with-ssl=openssl",
    "--with-libssl-prefix=" .. pkg("openssl@3.3.0").prefix,
    "--disable-pcre",
    "--disable-pcre2",
    "--without-libpsl",
    "--without-included-regex",
  }
end

function build()
  system { "make" }
end

function install()
  system { "make", "install" }
end
