# make-nixos-fast-again
A nixos module taking advice from http://make-linux-fast-again.com

Check out this repository somewhere, e.g. in <code>/etc/nixos/make-nixos-fast-again</code> and add this to your <code>configuration.nix</code>:

<pre>
imports = [
  # ... other imports ...
  ./make-nixos-fast-again
];

make-nixos-fast-again.enable = true;
</pre>
