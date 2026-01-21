{
  inputs = {
    nixpkgs.url = "github:kompismoln/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      name = "kompismoln";
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        inherit name;
        packages = with pkgs; [
          (writeScriptBin "npm" ''echo "use pnpm"'')
          (writeScriptBin "npx" ''echo "use pnpm dlx"'')
          pnpm
          nodejs
        ];
      };
    };
}
