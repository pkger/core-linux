manteiners = { "Diogo-ss" }
os = "linux"
arch = "x86"

-- only two values allowed are `pkg.name` and `pkg.version`
url = "https://raw.githubusercontent.com/pkger/core-pkgs/main/pkgs/${{ name }}/${{ version }}/pkg.lua"

search = {
  type = "github",
  url = "https://api.github.com/repos/pkger/core-pkgs/git/trees/main?recursive=1",
}

-- TODO: GitLab, API, metadata
