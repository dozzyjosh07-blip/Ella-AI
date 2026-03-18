# Fix "gradlew: No such file or directory" Error

If you see this error in Android-IDE, follow these steps:

## Quick Fix (30 seconds)

### Step 1: Open Terminal in Android-IDE
Tap the **Terminal** icon (usually at the bottom toolbar)

### Step 2: Run Setup Script
```bash
cd /sdcard/AndroidIDEProjects/emma-app
bash setup.sh
```

### Step 3: Build
Tap the **Build** button again

---

## Manual Fix (If Setup Script Doesn't Work)

### Fix 1: Make gradlew Executable
```bash
cd /sdcard/AndroidIDEProjects/emma-app
chmod +x gradlew
```

### Fix 2: Fix Line Endings
```bash
cd /sdcard/AndroidIDEProjects/emma-app
sed -i 's/\r$//' gradlew
```

### Fix 3: Use Bash Directly
Instead of tapping Build, run:
```bash
cd /sdcard/AndroidIDEProjects/emma-app
bash gradlew assembleDebug
```

---

## Why This Happens

When extracting `.tar.gz` on Android:
1. ✅ Files are extracted
2. ❌ Executable permissions are lost
3. ❌ Line endings may become Windows-style (CRLF)

The fixes above restore these settings.

---

## Verify gradlew Exists

Run this to check:
```bash
find /sdcard/AndroidIDEProjects -name "gradlew" 2>/dev/null
```

If nothing is found, the archive didn't extract properly. Re-extract it.

---

## Still Not Working?

Try this nuclear option:
```bash
cd /sdcard/AndroidIDEProjects
rm -rf emma-app
tar -xzf emma-app.tar.gz
cd emma-app
chmod +x gradlew
sed -i 's/\r$//' gradlew
bash gradlew assembleDebug
```

This:
1. Deletes old folder
2. Re-extracts cleanly
3. Fixes permissions
4. Fixes line endings
5. Builds directly

---

## Success Indicators

After running fixes, you should see:
- `✅ gradlew found`
- `✅ Line endings fixed`
- `✅ gradlew is now executable`
- Build starts downloading dependencies

---

## Need More Help?

Check the full guide: `ANDROID_IDE_GUIDE.md`
