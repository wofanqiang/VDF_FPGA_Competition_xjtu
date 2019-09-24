python ../gen_test.py 
@echo off
if not exist msu (
        @echo "Generating msu project..."
        call generate.bat
    ) else (
        @echo "Opening msu project..."
    )
call open_prj.bat
