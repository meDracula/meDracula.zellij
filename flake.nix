{
	description = "Zellij configuration for meDracula as a plugin";
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
	};
	outputs = { self, nixpkgs }:
	let
		system = "x86_64-linux";
		pkgs = import nixpkgs { inherit system; };
	in
	{
		devShells.${system} = {
			neovim = pkgs.mkShell {
				name = "zellij";
				packages = [
					pkgs.zellij
				];
				shellHook = ''echo "Zellij" | figlet'';
			};
		};
	};
}
