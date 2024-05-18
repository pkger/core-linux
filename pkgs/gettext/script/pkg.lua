name = "gettext"
description =
  "Specifically, the GNU gettext utilities are a set of tools that provides a framework to help other GNU packages produce multi-lingual messages."
homepage = "https://www.gnu.org/software/gettext/"
license = "GNU Lesser General Public License"
manteiners = "Diogo-ss"
url = "https://ftp.gnu.org/pub/gnu/gettext/gettext-${{ version }}.tar.gz"

checkver = {
  url = "https://www.gnu.org/software/gettext/",
  regex = "gettext%-(.-)%.tar",
}

function pre_build()
  system {
    "./configure",
    "--prefix=" .. pkgdir,
    "--disable-static",
    "--docdir=" .. pkgshare,
  }
end

function build()
  system { "make" }
end

function install()
  system { "make", "install" }
end
