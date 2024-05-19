name = "neovim"
description = "Vim-fork focused on extensibility and usability"
homepage = "https://neovim.io"
license = "Apache-2.0"
manteiners = "Diogo-ss"
version = "0.9.5"
url = "https://github.com/neovim/neovim/releases/download/v${{ version }}/nvim-linux64.tar.gz"

keep_source_file = true

checkver = {
  url = "https://api.github.com/repos/neovim/neovim/releases/latest",
  jsonpath = "tag_name",
  regex = "[Vv]?(.+)",
}

function install()
  system "mv * .."
end
