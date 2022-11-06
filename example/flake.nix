{
  # inputs.incl.url = "github:divnix/incl";
  inputs.incl.url = "path:../.";

  outputs = { incl, self }: {
    filteredSource = (incl // {debug = true;}) ./. [
      ./README.md
      ./folder # and all below
    ];
  };
}
