
mkdir -Path output -Force

mkdir -Path output\lib -Force
mkdir -Path mods -Force


$moduleA = "mods\com.module.a"
$moduleB =  "mods\com.module.client"

mkdir -Path $moduleA  -Force
mkdir -Path $moduleB  -Force



$jav_path = Join-Path  $env:JAVA_HOME  "bin"
$javac_path = Join-Path  $jav_path "javac.exe"
$jar_path = Join-Path  $jav_path "jar.exe"


# Compile module A
&($javac_path) -d $moduleA $(Get-ChildItem .\src\com.module.a  -Recurse -Filter '*.java' -File | %{ $_.FullName})

#package module A

&($jar_path)  -c -f "output\lib\com.module.a.jar" -C "mods\com.module.a" .



# Compile module B
&($javac_path) --module-path mods\com.module.a -d $moduleB $(Get-ChildItem .\src\com.module.client  -Recurse -Filter '*.java' -File | %{ $_.FullName})

#packages module B
#&($jar_path)  -c -f "output\moduleB\lib\moduleBClient.jar"  --main-class com.module.client.Client  -C "output\ModuleB\classesB" .

