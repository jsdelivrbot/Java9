
mkdir -Path output -Force
mkdir -Path output\moduleA\lib -Force

$classA = "output\moduleA\classesA"
$classB = "output\moduleB\classesB"

mkdir -Path $classA -Force
mkdir -Path $classB -Force

$jav_path = Join-Path  $env:JAVA_HOME  "bin"
$javac_path = Join-Path  $jav_path "javac.exe"
$jar_path = Join-Path  $jav_path "jar.exe"


# Compile module A
&($javac_path) -d $classA $(Get-ChildItem .\com.module.a  -Recurse -Filter '*.java' -File | %{ $_.FullName})

#package module A

&($jar_path)  -c -f "output\moduleA\lib\com.module.a.jar" -C "output\ModuleA\classesA" .



# Compile module B
&($javac_path) --module-path "output\moduleA\lib\" -d $classB $(Get-ChildItem .\com.module.user  -Recurse -Filter '*.java' -File | %{ $_.FullName})

#packages module B
&($jar_path)  -c -f "output\moduleB\lib\com.module.user.jar"  --main-class com.module.user.User  -C "output\ModuleB\classesB" .





