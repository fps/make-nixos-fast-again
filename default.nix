{ config, lib, ...}:
{
  options.make-nixos-fast-again.enable = lib.mkOption {
    type = lib.types.bool;
    default = false;
  };

  config.boot.kernelParams = lib.mkIf config.make-nixos-fast-again.enable [
    "noibrs" "noibpb" "nopti" "nospectre_v2" "nospectre_v1" "l1tf=off"
    "nospec_store_bypass_disable" "no_stf_barrier" "mds=off" "tsx=on"
    "tsx_async_abort=off" "mitigations=off"
  ];
}
