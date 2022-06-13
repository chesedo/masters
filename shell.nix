{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ tectonic biber ];
  buildInputs = with pkgs; [ texlab ];

  packages = with pkgs; [ zathura ];
}
