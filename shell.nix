let
  nixpkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9bc0e974545d5bc4c24e1ed047be0dc4e30e494b.tar.gz") {};
in
  with nixpkgs;
  stdenv.mkDerivation {
    name = "tectonic_shell";
    nativeBuildInputs = with nixpkgs; [
      tectonic
      biber
      jdk11
    ];
    buildInputs = with nixpkgs; [
      texlab
      zathura
    ];
  }
