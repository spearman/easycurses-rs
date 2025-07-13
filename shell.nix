with import <nixpkgs> {};
mkShell {
  buildInputs = [
    gdb   # required for rust-gdb
    llvm  # required to find ncurses.h
    rustup
    rust-analyzer
  ];
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    ncurses
  ];
}
