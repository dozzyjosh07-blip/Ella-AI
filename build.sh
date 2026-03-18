#!/bin/bash
# Emma AI Assistant - Build Script

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Set Gradle home to local directory
export GRADLE_USER_HOME="$SCRIPT_DIR/gradle-home"
mkdir -p "$GRADLE_USER_HOME"

# Fix gradlew
chmod +x gradlew
sed -i 's/\r$//' gradlew 2>/dev/null || true

echo "Building Emma AI Assistant..."
echo "Gradle home: $GRADLE_USER_HOME"
echo ""

# Build
exec ./gradlew assembleDebug "$@"
