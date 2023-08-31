# SPDX-FileCopyrightText: 2022 The Standard Authors
#
# SPDX-License-Identifier: Unlicense
{
  # inputs.incl.url = "github:divnix/incl";
  inputs.incl.url = "path:../.";

  outputs = {incl, self}: {
    filteredSource = (incl // {debug = true;}) ./. [
      ./README.md
      ./folder/other # and all below
      "foo10" # but not foo1
    ];
  };
}
