name = "neovim"
version = "0.9.5"
description = "Vim-fork focused on extensibility and usability"
homepage = "https://neovim.io"
license = "Apache-2.0"
manteiners = "Diogo-ss"
url = "https://github.com/neovim/neovim/releases/download/v${{ version }}/nvim-linux64.tar.gz"
hash = "c3d7cfd161ccfca866fb690d53c5f0ab0df67934"

bin = "nvim-linux64/bin/nvim"

checkver = {
  url = "https://api.github.com/repos/neovim/neovim/releases/latest",
  jsonpath = "tag_name",
  regex = "[Vv]?(.+)",
}

function install()
  extract "nvim-linux64.tar.gz"
end

function test()
  extract { "nvim", "--version" }
end
