$cfg_path="C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\"
$files="autoexec.cfg","BotPractice.cfg","overwatch.cfg","William.cfg"

$folders="functions"
$git_path=Get-Location

foreach ($i in $files){
   Copy-Item -Path ($git_path.Path + "\" + $i) -Destination ($cfg_path) -Force -PassThru
}

foreach ($i in $folders){
   Copy-Item -Path ($git_path.Path + "\" + $i + "\") -Destination ($cfg_path) -Recurse -Force -PassThru
}