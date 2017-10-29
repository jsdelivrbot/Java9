
$bin_path = Join-Path  $env:JAVA_HOME  "bin"
$jmod_path = Join-Path  $env:JAVA_HOME  "jmods"
$java_link_path = Join-Path  $bin_path "jlink.exe"
$java_path = Join-Path  ".\image\bin" "java.exe"

if(Test-Path -Path ".\image"){
    Remove-Item ".\image" -Recurse 
}

Write-Host "Packaging Image"
&$java_link_path --module-path ".\output\lib;$jmod_path" --add-modules com.module.client --strip-debug --compress=2 --output image


Write-Host "Running image"
&($java_path)  -m com.module.client