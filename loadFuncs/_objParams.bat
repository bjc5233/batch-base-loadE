@echo off
::说明
::  校验batch对象参数个数
::参数
::  [paramCount] [objMethod] [realParam...]
::      paramCount - 参数个数
::      objMethod - 对象方法名
::      realParam - 对象方方法传入参数
::external
::  date       2018-01-03 16:35:21
::  face       (>_<)
::  weather    小雨转中雨 9℃/5℃ 东北风
set _msgError=%~d0%~p0_msgError
if "%1"=="" (call %_msgError% %0 "paramCount NOT DEFINED") else (set _paramCount=%1)
if "%2"=="" (call %_msgError% %0 "objMethod NOT DEFINED") else (set _objMethod=%2)
(shift /1)& (shift /1)
set errorMsg="objMethod[%_objMethod%]: param%_paramCount% NOT DEFINED"
(if %_paramCount% GEQ 1 if "%~1"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 2 if "%~2"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 3 if "%~3"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 4 if "%~4"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 5 if "%~5"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 6 if "%~6"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 7 if "%~7"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 8 if "%~8"=="" call %_msgError% %0 %errorMsg%)
(if %_paramCount% GEQ 9 if "%~9"=="" call %_msgError% %0 %errorMsg%)
set _paramCount=& set _objMethod=