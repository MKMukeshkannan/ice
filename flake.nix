{
  description = "Pepper's flake templates";

  outputs = { self, ... }: {
    templates = {
      myc = {
        path = ./myc;
        description = "simple c project";
      };
      conancpp = {
        path = ./conancpp;
        description = "simple cpp project, configured with conan";
      };
    };
  };
}
