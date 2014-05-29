SET CURL=.\curl_728_1\curl

SET PY27_32=C:\Python\27\32\Python
SET PIP27_32=C:\Python\27\32\Python\Scripts\pip

%CURL% -O http://www.python.org/ftp/python/2.7.3/python-2.7.3.msi

%CURL% -O http://python-distribute.org/distribute_setup.py
%CURL% -O -k https://raw.github.com/pypa/pip/master/contrib/get-pip.py
REM %CURL% -L -O http://downloads.sourceforge.net/wxpython/wxPython2.8-win32-unicode-2.8.12.1-py27.exe
REM %CURL% -L -O http://downloads.sourceforge.net/cx-freeze/cx_Freeze-4.3.1.win32-py2.7.msi
%CURL% -0 http://pypi.python.org/packages/2.7/l/lxml/lxml-2.2.8.win-win32-py2.7.exe

msiexec /passive TARGETDIR="C:\Python\27\32\" /i python-2.7.3.msi

%PY27_32% distribute_setup.py
%PY27_32% get-pip.py
%PY27_32% distribute
wxPython2.8-win32-unicode-2.8.12.1-py27.exe
msiexec /passive TARGETDIR2.7="C:\Python\27\32" /i cx_Freeze-4.3.1.win32-py2.7.msi
msiexec /passive TARGETDIR="C:\Python\27\32\" /i lxml-2.2.8.win-win32-py2.7.exe

PAUSE
