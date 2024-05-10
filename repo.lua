manteiners = { "Diogo-ss" }

-- env = {
--   user = "loopkg",
--   repo = "core-spec",
--   branch = "main",
-- }

-- the only two values allowed are `pkg.name` and `pkg.version`
url = "https://raw.githubusercontent.com/pkger/core-pkgs/main/pkgs/${{ name }}/${{ version }}/pkg.lua"

-- Get the complete repo tree.
-- For now only compatible with GitHub and API format
-- TODO: GitLab

search = {
   type = "github",
   url = "https://api.github.com/repos/pkger/core-pkgs/git/trees/main?recursive=1",
}

-- search = {
--   type = "api",
--   url = "https://api.pkger.dev/pkgs/?search=${{ pkg.name }}",
-- }
