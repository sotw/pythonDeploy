SET CURL=.\curl_728_1\curl

SET PY27_64=C:\Python\27\64\Python
SET PIP27_64=C:\Python\27\64\Scripts\pip

%CURL% -O http://www.python.org/ftp/python/2.7.3/python-2.7.3.amd64.msi

%CURL% -O http://python-distribute.org/distribute_setup.py
%CURL% -O -k https://raw.github.com/pypa/pip/master/contrib/get-pip.py
#%CURL% -L -O downloads.sourceforge.net/project/wxpython/wxPython/2.8.12.1/wxPython2.8-win32-unicode-2.8.12.1-py27.exe
%CURL% -L -O http://downloads.sourceforge.net/cx-freeze/cx_Freeze-4.3.1.win-amd64-py2.7.msi

msiexec /passive TARGETDIR="C:\Python\27\64\" /i python-2.7.3.amd64.msi

%PY27_64% distribute_setup.py
%PY27_64% get-pip.py
%PY27_64% DISTRIBUTE

wxPython2.8-win64-unicode-2.8.12.1-py27.exe
msiexec /passive TARGETDIR2.7="C:\Python\27\64" /i cx_Freeze-4.3.1.win-amd64-py2.7.msi

msiexec /passive TARGETDIR="C:\Python\27\32\" /i lxml-2.2.8.win-amd64-py2.7.exe

PAUSE
