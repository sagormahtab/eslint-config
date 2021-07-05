@echo off
:: This program configures eslint and prettier
set arg=%1
COPY "C:\eslint-config\.eslintrc.json" . > NUL
COPY "C:\eslint-config\.prettierrc" . > NUL
echo Installing packages...

if not defined arg goto npm
if %arg%==-y (goto yarn) else (goto notok)
:npm
call npm install --save-dev eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node eslint-plugin-prettier eslint-plugin-react prettier
goto end

:yarn
call yarn add -D eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node eslint-plugin-prettier eslint-plugin-react prettier
goto end

:notok
echo Something wrong in your command
goto end
:end
Pause