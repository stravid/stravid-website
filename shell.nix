{
  pkgs ? import (fetchGit {
    url = https://github.com/NixOS/nixpkgs-channels;
    ref = "nixos-20.03";
  }) {}
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ruby_2_6
    watchexec
  ];

  shellHook = ''
    mkdir -p .local-data/gems
    export GEM_HOME=$PWD/.local-data/gems
    export GEM_PATH=$GEM_HOME
  '';
}
