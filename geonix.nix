{ inputs, config, lib, pkgs, ... }:

let
  geopkgs = inputs.geonix.packages.${pkgs.system};

in {
  
  name = "pacman";

  packages = [  ];

  languages.python = {
    enable = true;
    package = pkgs.python3.withPackages (p: [ pkgs.python3Packages.pygame pkgs.python3Packages.numpy pkgs.python3Packages.random2 ]);
    poetry.enable = true;
  };

}