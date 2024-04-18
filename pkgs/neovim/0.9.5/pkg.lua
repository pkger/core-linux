name = "neovim"
version = "0.9.5"
description = "Vim-fork focused on extensibility and usability"
homepage = "https://neovim.io"
license = "Apache-2.0"
manteiners = "Diogo-ss"
url = "https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz"
hash = "44ee395d9b5f8a14be8ec00d3b8ead34e18fe6461e40c9c8c50e6956d643b6ca"

bin = "bin/nvim-linux64/bin/nvim"

checkver = {
	url = "https://api.github.com/repos/neovim/neovim/releases/latest",
	jsonpath = "tag_name",
	regex = "[Vv]?(.+)",
}

function install()
	system({ "-xzf", "nvim-linux64.tar.gz" })
end

function test()
	system({ "nvim", "--version" })
end
