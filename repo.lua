manteiners = { "Diogo-ss" }

-- env = {
--   user = "loopkg",
--   repo = "core-spec",
--   branch = "main",
-- }

-- the only two values allowed are `pkg.name` and `pkg.version`
templetes = {
	script = "https://raw.githubusercontent.com/pkger/core-pkgs/main/pkgs/${{ pkg.name }}/script.lua",
	pkg = "https://raw.githubusercontent.com/pkger/core-pkgs/main/pkgs/${{ pkg.name }}/${{ pkg.version }}/pkg.lua",
}

-- Get the complete repo tree.
-- For now only compatible with GitHub
-- TODO: GitLab
search = {
	type = "github",
	url = "https://api.github.com/repos/pkger/core-pkgs/git/trees/main?recursive=1",
	jsonpath = "tree",
	pattern = "^pkgs/.*$",
}
