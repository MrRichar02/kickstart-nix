return {
	cmd = { 'nixd' },
	filetypes = { 'nix' },
	root_markers = {
		"flake.nix",
		"flake.lock",
	},
	settings = {
		nixd = {
			nixpkgs = {
				expr = "import <nixpkgs> { }",
			},
			formatting = {
				command = { "alejandra" },
			},
			options = {
				nixos = {
					expr = '(builtins.getFlake \"github:MrRichar02/nixos-config\").nixosConfigurations.thinkpad.options',
				},
				home_manager = {
					expr = '(builtins.getFlake \"github:MrRichar02/home-manager-config\").homeConfigurations.thinkpad.options',
				},
			},
		},
	}
}
