echo %CD%


cmd /c npm install husky --save-dev
cmd /c npm pkg set scripts.prepare="husky install"
cmd /c npm run prepare
cmd /c npm install -D commit-message-validator
cmd /c npx husky add  %CD%\..\.husky/commit-msg "npx commit-message-validator"
