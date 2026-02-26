{
  description = "Python env with reverse engineering tools";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pythonEnv = pkgs.python3.withPackages (
          ps: with ps; [
            pip
            virtualenv
            # RE Python libs
            pwntools # CTF/exploit toolkit
          ]
        );

        nativeTools = with pkgs; [
          # Shell
          nushell

          # Disassemblers / Decompilers
          ghidra # NSA decompiler

          # Hex Editors
          imhex # dark mode simple hex editor
          okteta # more complete hex editor
          xxd # hex dump and converting

          # Binary analysis
          file # identify file types

          # Network / traffic
          nmap

        ];
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [ pythonEnv ] ++ nativeTools;

          # Make Ghidra and other GUI tools find their shared libs
          NIX_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath nativeTools;
          NIX_LD = pkgs.lib.fileContents "${pkgs.stdenv.cc}/nix-support/dynamic-linker";

          shellHook = ''
            # ── Python venv ──────────────────────────────────────────────
            if [ ! -d .venv ]; then
              echo "Creating virtual environment..."
              python -m venv .venv
            fi
            source .venv/bin/activate
            if [ -f requirements.txt ]; then
              echo "Installing requirements from requirements.txt..."
              pip install -r requirements.txt
            fi

            exec nu

          '';
        };

      }
    );
}
