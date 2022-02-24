{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ tectonic ];
  buildInputs = with pkgs; [ texlab ];

  packages = with pkgs; [ zathura ];
}
