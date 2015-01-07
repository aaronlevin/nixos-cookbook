{ nixpkgs ? (import <nixpkgs> {})
, haskell ? (import <nixpkgs> {}).haskellPackages }:
let
  myEnvFun = nixpkgs.myEnvFun;
  projectName = haskell.callPackage (import ./project-name.nix) { };
  redis = nixpkgs.redis;
in rec {
  galeneCommonEnv = myEnvFun {
    name = "project-name-run-env";

    buildInputs = [
      redis
      projectName
    ];
  };
}

