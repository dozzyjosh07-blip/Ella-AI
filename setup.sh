#!/bin/bash
# Emma AI Assistant - Setup Script for Android-IDE

set -e

echo "=========================================="
echo "  Emma AI Assistant - Setup"
echo "=========================================="

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "Project: $SCRIPT_DIR"
echo ""

# Check gradlew
if [ ! -f "gradlew" ]; then
    echo "❌ gradlew not found!"
    exit 1
fi
echo "✅ gradlew found"

# Fix permissions
chmod +x gradlew
sed -i 's/\r$//' gradlew 2>/dev/null || true
echo "✅ gradlew ready"

# Check wrapper jar
if [ ! -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    echo "❌ gradle-wrapper.jar not found!"
    exit 1
fi
echo "✅ gradle-wrapper.jar found"

# Check essential files
for file in "build.gradle.kts" "settings.gradle.kts" "app/build.gradle.kts" "local.properties"; do
    if [ -f "$file" ]; then
        echo "✅ $file"
    else
        echo "❌ $file MISSING"
        exit 1
    fi
done

echo ""
echo "=========================================="
echo "  ✅ Setup Complete!"
echo "=========================================="
echo ""
echo "Build with:"
echo "  ./gradlew assembleDebug"
echo ""
