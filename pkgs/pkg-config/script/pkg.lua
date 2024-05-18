name = "pkg-config"
description = "pkg-config is a helper tool used when compiling applications and libraries."
homepage = "https://freedesktop.org/wiki/Software/pkg-config/"
license = "GPL-2.0-or-later"
manteiners = "Diogo-ss"
url = "https://pkgconfig.freedesktop.org/releases/pkg-config-${{ version }}.tar.gz"

checkver = {
  url = "https://freedesktop.org/wiki/Software/pkg-config/",
  regex = '<a%s+href=".-archives/pkg%-config.-">(.-)</a>',
}

conflicts = {
  "pkgconf",
}

function pre_build()
  system {
    "./configure",
    "--prefix=" .. pkgdir,
    "--with-internal-glib",
    "--disable-host-tool",
    "--docdir=" .. pkgshare,
  }
end

function build()
  system { "make" }
end

function install()
  system { "make", "install" }
end
