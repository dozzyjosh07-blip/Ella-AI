# Building Emma with Android-IDE

## Prerequisites

- Android-IDE app installed
- 2GB+ free storage
- Internet connection
- Your `.ppn` wake word file

## Steps

1. **Extract** `emma-app.tar.gz`
2. **Copy** your `.ppn` file to `app/src/main/assets/hey-emma_android.ppn`
3. **Open** the project in Android-IDE
4. **Run** in Terminal:
   ```bash
   bash setup.sh
   bash build.sh
   ```
5. **Find APK** at `app/build/outputs/apk/debug/app-debug.apk`

## Troubleshooting

| Error | Fix |
|-------|-----|
| "Could not create parent directory" | `export GRADLE_USER_HOME=$(pwd)/gradle-home` |
| "gradlew not found" | `chmod +x gradlew` |
| "Permission denied" | Use `bash gradlew` instead of `./gradlew` |

## Build Times

- First build: 5-10 minutes
- Subsequent builds: 1-2 minutes
