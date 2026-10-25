rustc "start-nvim.rs" -o "start-nvim.exe.tmp"
rm "start-nvim.exe.pdb"
ResourceHacker -open "start-nvim.exe.tmp" -save "start-nvim.exe" -resource "icon/nvim-logo.ico" -mask ICONGROUP,MAINICON, -action addoverwrite -log CONSOLE
rm "start-nvim.exe.tmp"

