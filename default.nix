{ pkgs ? import ./nixpkgs.nix {} }:
pkgs.buildGo118Module {
  pname = "declin";
  version = "0.1";
  src = ./.;
  vendorSha256 = "sha256:19isqhc24h0y2l6d6cn7mrswnf073nyyy62id8cwfxny71bwd01a";

  nativeBuildInputs = [ pkgs.gopls pkgs.go-outline pkgs.git ];

  meta = with pkgs.lib; {
    description = "";
    homepage = "";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
  };
}
