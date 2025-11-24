@echo off
setlocal enabledelayedexpansion
for %%f in ("*.fbx") do (
  FBX2glTF -i %%f -o %CD%\glb\%%~nf.glb
)
echo Done.
pause