
$bin_path = Join-Path  $env:JAVA_HOME  "bin"
$java_path = Join-Path  $bin_path "java.exe"

&($java_path) --module-path "output\moduleA\lib;output\moduleB\lib" -m moduleB.User