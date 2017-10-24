mkdir -Path output\lib -Force

$classA = "output\classesA"

mkdir -Path $classA -Force

$jav_path = Join-Path  $env:JAVA_HOME  "bin"
$javac_path = Join-Path  $jav_path "javac.exe"
$jar_path = Join-Path  $jav_path "jar.exe"




&($javac_path) -d $classA $(Get-ChildItem .\com.module.a  -Recurse -Filter '*.java' -File | %{ $_.FullName})

