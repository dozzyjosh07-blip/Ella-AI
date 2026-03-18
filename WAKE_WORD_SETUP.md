# Wake Word Setup

## Quick Setup

1. Copy your `.ppn` file to:
   ```
   app/src/main/assets/hey-emma_android.ppn
   ```

2. If your file has a different name, update `app/build.gradle.kts`:
   ```kotlin
   buildConfigField("String", "WAKE_WORD_MODEL", "\"your-file.ppn\"")
   ```

## Getting Your Wake Word File

1. Go to https://console.picovoice.ai/ppn
2. Create a wake word for "Hey Emma"
3. Download the Android `.ppn` file
4. Place it in `app/src/main/assets/`

## Troubleshooting

- Adjust sensitivity in `WakeWordService.kt`: `.setSensitivity(0.7f)`
- Range: 0.0 (less sensitive) to 1.0 (more sensitive)
