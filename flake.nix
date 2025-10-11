{
  description = "Pepper's flake templates";

  outputs = { ... }: {
    templates = {
      myc = {
        path = ./myc;
        description = "simple c project";
      };
      imgui = {
        path = ./imgui;
        description = "simple c project";
      };
      opengl = {
        path = ./opengl;
        description = "opengl scafolding => glfw + glew + opengl + c++23";
      };
      conancpp = {
        path = ./conancpp;
        description = "simple cpp project, configured with conan";
      };
      py-ds = {
        path = ./py-ds;
        description = "python flake for datascience and stuff";
      };
      raw = {
        path = ./raw;
        description = "simple cpp project, configured with conan";
      };
    };
  };
}
