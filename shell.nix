{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ tectonic biber jdk11];
  buildInputs = with pkgs; [ texlab ];

  packages = with pkgs; [ zathura ];
}
