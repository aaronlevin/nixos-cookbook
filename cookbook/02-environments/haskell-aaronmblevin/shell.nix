{ nixpkgs ? (import <nixpkgs> {})
, haskell ? (import <nixpkgs> {}).haskellPackages }:
let
  myEnvFun = nixpkgs.myEnvFun;
  ghcmod = haskell.ghcMod;
  ghc = haskell.ghc;
  cabalInstall = haskell.cabalInstall;
  aeson = haskell.aeson;
  base64Bytestring = haskell.base64Bytestring;
  free = haskell.free;
  httpTypes = haskell.httpTypes;
  jwt = haskell.jwt;
  mtl = haskell.mtl;
  text = haskell.text;
  time = haskell.time;
  transformers = haskell.transformers;
  uuid = haskell.uuid;
in rec {
  projectNameDevEnv = myEnvFun {
    name = "project-name-dev";

    buildInputs = [
      # dev needs
      ghcmod
      ghc
      cabalInstall

      # libs
      aeson
      base64Bytestring
      free
      httpTypes
      jwt
      mtl
      text
      time
      transformers
      uuid
    ];
  };
}
