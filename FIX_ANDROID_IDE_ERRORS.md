# Fix Android-IDE Build Errors

## Error: "Could not create parent directory for lock file"

### Problem
Android-IDE can't write to the default Gradle directory.

### Solution

The project now uses a **local gradle-home folder** (no SD card needed).

In Android-IDE Terminal:
```bash
cd /path/to/emma-app
bash setup.sh
```

Then tap **Build** button.

---

## Alternative Fixes

### Fix 1: Use Local Gradle Directory
```bash
cd /path/to/emma-app
mkdir -p gradle-home
./gradlew assembleDebug
```

### Fix 2: Use Bash Explicitly
```bash
cd /path/to/emma-app
bash gradlew assembleDebug
```

### Fix 3: Clear and Retry
```bash
cd /path/to/emma-app
rm -rf gradle-home
mkdir gradle-home
chmod +x gradlew
./gradlew clean
./gradlew assembleDebug
```

---

## Complete Fresh Start

If nothing works:

```bash
# 1. Go to your projects folder
cd /path/to/your/projects

# 2. Delete old project
rm -rf emma-app

# 3. Re-extract archive
tar -xzf emma-app.tar.gz

# 4. Enter project
cd emma-app

# 5. Run setup
bash setup.sh

# 6. Build
./gradlew assembleDebug
```

---

## Find Your Project Path

If you don't know where your project is:

```bash
# Search for emma-app folder
find / -name "emma-app" -type d 2>/dev/null

# Or search for gradlew
find / -name "gradlew" -type f 2>/dev/null
```

---

## Success Checklist

After fixes, you should see:
- ✅ "Starting a Gradle Daemon"
- ✅ "Downloading https://services.gradle.org/..."
- ✅ "BUILD SUCCESSFUL"

---

## Still Not Working?

1. Check Android-IDE has storage permission
2. Try moving project to `/data/data/com.itsaky.androidide/files/`
3. Use Android-IDE's "Create Project" feature and copy files over
