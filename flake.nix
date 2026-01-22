{
  inputs = {
    nixpkgs.url = "github:kompismoln/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      name = "kompismoln-site";
      system = "x86_64-linux";
      version = "0.1.0";
      src = ./site;
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = name;
        inherit version src;

        nativeBuildInputs = with pkgs; [
          nodejs
          pnpm
          pnpmConfigHook
        ];

        pnpmDeps = pkgs.pnpm.fetchDeps {
          pname = "${name}-deps";
          inherit version src;
          fetcherVersion = 2;
          hash = "sha256-5mGUwUY4HRvjOKfdnY2SUnBve52+M+0hARWVgbd/2Hs=";
        };

        buildPhase = ''
          runHook preBuild
          pnpm build
          runHook postBuild
        '';

        installPhase = ''
          runHook preInstall
          mkdir -p $out
          cp -r build/* $out/
          runHook postInstall
        '';
      };

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
