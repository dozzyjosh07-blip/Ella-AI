# Fix Gradle Errors

## "Could not create parent directory for lock file"

Run in Android-IDE Terminal:

```bash
cd /path/to/emma-app
export GRADLE_USER_HOME=$(pwd)/gradle-home
mkdir -p $GRADLE_USER_HOME
chmod +x gradlew
./gradlew assembleDebug
```

Or use the build script:

```bash
bash build.sh
```

## "gradlew: No such file or directory"

```bash
chmod +x gradlew
bash gradlew assembleDebug
```

## "Permission denied"

```bash
bash gradlew assembleDebug
```

## Complete Reset

```bash
cd /path/to/projects
rm -rf emma-app
tar -xzf emma-app.tar.gz
cd emma-app
bash build.sh
```
