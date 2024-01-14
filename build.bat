@echo off

if not exist build mkdir build
pushd build

set flags=-Zi -nologo -Gm- ..\incremental.cpp /link -INCREMENTAL:NO

if exist incremental.pdb del incremental.pdb
if exist vc140.pdb del vc140.pdb

for /l %%m in (0, 1, 9) do (
for /l %%n in (0, 1, 9) do (
for /l %%o in (0, 1, 9) do (
call cl -DMEMBER%%m=1 -DMEMBER%%n=1 -DMEMBER%%o=1 %flags% >nul
)
copy incremental.pdb incremental_%%m%%n.pdb >nul
dir incremental_%%m%%n.pdb
)
)

del incremental.pdb
del vc140.pdb
call cl %flags%
copy incremental.pdb incremental_clean.pdb >nul
dir incremental_clean.pdb

dir incremental_*.pdb

popd
