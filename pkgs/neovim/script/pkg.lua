name = "neovim"
description = "Vim-fork focused on extensibility and usability"
homepage = "https://neovim.io"
license = "Apache-2.0"
manteiners = "Diogo-ss"
url = "https://github.com/neovim/neovim/releases/download/v${{ version }}/nvim-linux64.tar.gz"

bin = "nvim-linux64/bin/nvim"

checkver = {
	url = "https://api.github.com/repos/neovim/neovim/releases/latest",
	jsonpath = "tag_name",
	regex = "[Vv]?(.+)",
}

function test()
	local code, _ = system("nvim --version")

	if code ~= 0 then
		error("Neovim not found.")
	end
end
