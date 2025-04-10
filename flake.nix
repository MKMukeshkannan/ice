{
  description = "Pepper's flake templates";

  outputs = { ... }: {
    templates = {
      myc = {
        path = ./myc;
        description = "simple c project";
      };
      conancpp = {
        path = ./conancpp;
        description = "simple cpp project, configured with conan";
      };
      raw = {
        path = ./raw;
        description = "simple cpp project, configured with conan";
      };
    };
  };
}
