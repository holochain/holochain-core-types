{ pkgs }:
let
  name = "ct-test";

  script = pkgs.writeShellScriptBin name
  ''
  set -euo pipefail
  cargo test
  '';
in
{
 buildInputs = [ script ]
 ;
}
