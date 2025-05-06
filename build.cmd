@echo off
scons platform=windows vsproj=yes dev_build=yes architecture=x86_64 target=editor module_mono_enabled=yes
.\bin\godot.windows.editor.dev.x86_64.mono.exe --headless --generate-mono-glue modules/mono/glue
python .\modules\mono\build_scripts\build_assemblies.py --godot-output-dir=.\bin
pause
