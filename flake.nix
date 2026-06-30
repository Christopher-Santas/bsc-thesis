{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05"; 
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux"; 
      pkgs = nixpkgs.legacyPackages.${system};
      
      runtimeLibs = with pkgs; [];
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          typst
          tinymist
        ];

        buildInputs = runtimeLibs;

        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath runtimeLibs;

        shellHook = ''
          unset SOURCE_DATE_EPOCH
        '';
      };
    };
}
