# Linspirer Android reverse engineering

This repository contains the Linspirer tablet-management client. The API report covers its JSON-RPC transport and the distinction between device registration and account sign-in. Each application has an editable Apktool module, decoded resources, JADX reading sources and an independent module report. The Gradle build assembles the smali and signs the resulting APK with a locally generated debug key. JADX recovery gaps link to the corresponding smali methods.

| Application report | Build sources | Reading sources |
| --- | --- | --- |
| [领创平板管理-2025.9.1](reports/apps/领创平板管理-2025.9.1/README.md) | [Apktool](android/领创平板管理-2025.9.1/) | [Java and resources](sources/领创平板管理-2025.9.1/) |

See the [client and authentication report](reports/领创与中育接口.md), [Apifox operation index](reports/evidence/apifox-operations.json), and [client response evidence](reports/evidence/linspirer/).

## Build an APK

On Linux, install Bash, Python 3, util-linux for `flock`, JDK 21 and Android SDK Build Tools 35.0.0. Set `JAVA_HOME` and `ANDROID_HOME` to these installations. The Gradle wrapper and Apktool are included. Run from the repository root.

```sh
cd android
./gradlew assembleDebug
```

To build one application, run `./gradlew ':领创平板管理-2025.9.1:assembleDebug'` from `android/`. Outputs appear in `dist/` at the repository root.

## APK downloads and verification

The [APK release](https://github.com/Loshop-Studio/linspirer-android-reverse/releases/tag/recovered-apks-v1) contains two ZIPs. `original-apks.zip` holds the inputs under `中育apk/`. `rebuilt-apks.zip` holds the debug-signed outputs from the original reconstruction under `dist/`. The [verification record](reports/evidence/build-verification.json) provides both SHA-256 values per application. Fresh local builds use the debug identity generated on the build machine.

To compare a local build with the source APKs, run from the repository root after building.

```sh
gh release download recovered-apks-v1 --repo Loshop-Studio/linspirer-android-reverse --pattern original-apks.zip
unzip original-apks.zip
python3 tools/verification/verify_apks.py
```

## Related repositories

- [Zhongyu applications](https://github.com/Loshop-Studio/zhongyu-android-reverse)
- [Linspirer client](https://github.com/Loshop-Studio/linspirer-android-reverse)
- [Board formats and Flutter editor](https://github.com/Loshop-Studio/zhongyu-board-codec)
