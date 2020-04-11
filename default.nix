{ nixpkgs ? import <nixpkgs> {} }:

with nixpkgs;

let
  package = ({ mkDerivationWith, wrapQtAppsHook, lib, qtbase }:
  let
    ps = python37Packages;
  in mkDerivationWith ps.buildPythonApplication rec {
    pname = "qt-test";
    version = "0.0.1";
    src = ./.;

    propagatedBuildInputs = [
      ps.pyside2
      ps.shiboken2 # shiboken2 is required otherwise pyside2 won't import correctly
    ];

    postFixup = ''
      wrapQtApp $out/bin/qt-test
    '';

    doCheck = false;
  });
in libsForQt5.callPackage package {}

