# Usage

```nix
# flake.nix
{
  inputs.incl.url = "github:divnix/incl";
  inputs.incl.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { incl, self }: {
    filteredSource = incl self [
      ./README.md
      ./folder # and all below
    ];
  };
}
```

# Debug Filter

```nix
# flake.nix
{
  inputs.incl.url = "github:divnix/incl";
  inputs.incl.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { incl, self }: {
    filteredSource = (incl // {debug = true;}) self [
      ./README.md
      ./folder # and all below
    ];
  };
}
```
