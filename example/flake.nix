# SPDX-FileCopyrightText: 2022 The Standard Authors
#
# SPDX-License-Identifier: Unlicense
{
  # inputs.incl.url = "github:divnix/incl";
  inputs.incl.url = "path:../.";

  inputs.hive.url = "github:divnix/hive";

  outputs = {
    hive,
    incl,
    self,
    ...
  } @ inputs:
    hive.growOn {
      inherit inputs;

      cellsFrom = incl ./combs ["comb10"];
      cellBlocks = with hive.blockTypes; [
        diskoConfigurations
      ];
    }
    {diskoConfigurations = hive.collect self "diskoConfigurations";}
    {
      filteredSource = (incl // {debug = true;}) ./. [
        ./README.md
        ./folder/other # and all below
      ];
    };
}
