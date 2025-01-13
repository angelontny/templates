{
  description = "A flake containing all my templates.";

  outputs = { self }: {
    templates.python = {
      path = ./python;
      description = "A python project template";
      welcomeText = ''
        # A simple python template using uv
        - Intended for working with everyday python projects
        - Uses the python interpreter from nixpkgs
        - Make sure to select the required interpreter version ( can't select using uv )
      '';
      };
    templates.default = self.templates.python;
  };
}
