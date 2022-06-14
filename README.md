This is an experiment to build Cabal with Bazel.

[`gazelle_cabal`][gazelle_cabal] is used to produce rules to build Cabal
as a library with Bazel, and then
 [`gazelle_haskell_modules`][gazelle_haskell_modules] to generate the
rules to build each module individually.

To build
```bash
cd Cabal
nix-shell -p bazel_5 --pure --run "bazel build --experimental_reuse_sandbox_directories //:Cabal"
```

[gazelle_cabal]: https://github.com/tweag/gazelle_cabal
[gazelle_haskell_modules]: https://github.com/tweag/gazelle_haskell_modules
