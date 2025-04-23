{
  inputs = {
    utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          python313
          python313Packages.jsonpickle
          python313Packages.matplotlib
          python313Packages.numpy
          python313Packages.pandas
          python313Packages.statistics
          python313Packages.typing
        ];
      };
    }
  );
}

