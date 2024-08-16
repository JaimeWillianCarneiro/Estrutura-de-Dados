import Lake
open Lake DSL

package "lean_teste" where
  -- add package configuration options here

lean_lib «LeanTeste» where
  -- add library configuration options here

@[default_target]
lean_exe "lean_teste" where
  root := `Main
