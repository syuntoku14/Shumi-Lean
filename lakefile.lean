import Lake
open Lake DSL

package «shumi-lean» where
  -- add package configuration options here

lean_lib «ShumiLean» where
  -- add library configuration options here

@[default_target]
lean_exe «shumi-lean» where
  root := `Main
