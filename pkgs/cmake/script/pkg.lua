name = "cmake"
description = "CMake, the cross-platform, open-source build system."
homepage = "https://neovim.io"
license = "BSD-3-Clause"
manteiners = "Diogo-ss"
url = "https://github.com/Kitware/CMake/releases/download/v${{ version }}/cmake-${{ version }}-linux-x86_64.tar.gz"

checkver = {
  url = "https://api.github.com/repos/Kitware/CMake/releases/latest",
  jsonpath = "tag_name",
  regex = "[Vv]?(.+)",
}

function install()
  system "mv * .."
end
