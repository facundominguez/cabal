{ pkgs ? import ./nixpkgs.nix {} }:

with pkgs;

mkShell {
  BAZEL_USE_CPP_ONLY_TOOLCHAIN=1;
  buildInputs = [
    bazel_5
    binutils
    cacert
    nix
    git
    openjdk11
    python3
  ];
}
