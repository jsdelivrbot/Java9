
mkdir -Path output -Force

mkdir -Path output\lib -Force
mkdir -Path mods -Force


$moduleApiService = "mods\com.api"

$moduleProvider1 = "mods\com.api.providerimplone"
$moduleProvider2 = "mods\com.api.providerimpltwo"
$moduleClient = "mods\com.api.client"



mkdir -Path $moduleApiService  -Force
mkdir -Path $moduleProvider1  -Force
mkdir -Path $moduleProvider2  -Force
mkdir -Path $moduleClient  -Force



$jav_path = Join-Path  $env:JAVA_HOME  "bin"
$javac_path = Join-Path  $jav_path "javac.exe"
$jar_path = Join-Path  $jav_path "jar.exe"


# Compile Service Interface
&($javac_path) -d $moduleApiService  $(Get-ChildItem .\src\com.api  -Recurse -Filter '*.java' -File | %{ $_.FullName})

#package Service Interface

&($jar_path)  -c -f "output\lib\commonApi.jar" -C "mods\com.api" .



# Compile module B
&($javac_path) --module-path "mods\com.api" -d $moduleProvider1 $(Get-ChildItem .\src\com.api.providerimplone -Recurse -Filter '*.java' -File | %{ $_.FullName})

#packages module B
&($jar_path)  -c -f "output\lib\moduleProviderOne.jar" -C "mods\com.api.providerimplone" .

