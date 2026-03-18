# Emma AI Assistant

An AI assistant for Android powered by Google Gemini.

## Features

- Wake word detection ("Hey Emma")
- Voice conversations with Gemini AI
- Screen analysis
- Device control (flashlight, volume, apps)
- App automation (WhatsApp, Spotify)

## Setup

1. Add your API keys to `local.properties`
2. Add your `.ppn` wake word file to `app/src/main/assets/`
3. Build with `./gradlew assembleDebug`

## API Keys Needed

- **Gemini API Key**: https://makersuite.google.com/app/apikey
- **Picovoice Access Key**: https://console.picovoice.ai/
- **Google Search API Key** (optional): https://developers.google.com/custom-search/v1/overview

## Building with Android-IDE

See `ANDROID_IDE_GUIDE.md`

## License

MIT
