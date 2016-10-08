SET builddir=%SRC_DIR%\..\build_dir

if "%ARCH%" == "64" (
  set cmake_gen="Visual Studio 14 2015 Win64"
) else (
  set cmake_gen="Visual Studio 14 2015"
)

rmdir /s /q %builddir%
if errorlevel 1 exit 1
mkdir  %builddir%
if errorlevel 1 exit 1
cd %builddir%
if errorlevel 1 exit 1

cmake %SRC_DIR% -G %cmake_gen%
if errorlevel 1 exit 1

cmake --build %builddir% --config Release --target install
if errorlevel 1 exit 1

"%PYTHON%" setup.py install
if errorlevel 1 exit 1
