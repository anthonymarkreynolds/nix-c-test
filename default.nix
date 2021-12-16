with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "my-program";
  verion = "0.0.1";
  # buildInputs = [ alsaLib ];

  src = ./.;

  makeFlags = [ "PREFIX=$(out)" ];

}
