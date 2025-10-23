# PowerShell script to run Flutter/Dart commands in pre-commit hooks
param(
    [string]$Command,
    [string[]]$Files
)

# Ensure Flutter and Dart are in PATH for this session
# This assumes Flutter SDK is installed and FLUTTER_HOME environment variable is set
# Or, you might need to hardcode the path to your Flutter bin directory
# e.g., $env:Path += ";C:\flutter\bin"

# Find executable based on command
if ($Command -eq "format") {
    $executable = "dart"
    $args = @($Command) + $Files
} elseif ($Command -eq "analyze") {
    $executable = "flutter"
    $args = @($Command, "--no-fatal-infos", "--no-fatal-warnings") + $Files
} else {
    Write-Error "Unknown command: $Command"
    exit 1
}

$exePath = Get-Command $executable -ErrorAction SilentlyContinue
if (-not $exePath) {
    Write-Error "$executable executable not found in PATH."
    Write-Error "Please ensure Flutter/Dart SDK is installed and its 'bin' directory is added to your system's PATH."
    exit 1
}

# Execute the command with args
& $exePath.Source @args
exit $LASTEXITCODE
