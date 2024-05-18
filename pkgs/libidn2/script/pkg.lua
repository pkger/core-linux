name = "libidn2"
description =
"Libidn2 is an implementation of the IDNA2008 + TR46 specifications (RFC 5890, RFC 5891, RFC 5892, RFC 5893, TR 46)."
homepage = "https://www.gnu.org/software/libidn/#libidn2"
license = "GPL-2.0-or-later or LGPL-3.0-or-later"
manteiners = "Diogo-ss"
url = "https://ftp.gnu.org/gnu/libidn/libidn2-${{ version }}.tar.gz"

checkver = {
  url = "https://www.gnu.org/software/libidn/libidn2/reference/index.html",
  regex = "for%sLibidn2%s(.-)%sThe%slatest",
}

depends = {
  "libunistring",
  "gettext",
  -- build
  "pkg-config",
}

makedepends = {
  "pkg-config"
}

function pre_install()
  system {
    "./configure",
    "--prefix=" .. pkgdir,
    "--disable-static",
    "--with-libintl-prefix=" .. pkg("gettext").prefix,
  }
end

function install()
  system { "make", "install" }
end
