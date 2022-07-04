# YandexMapsMobileWrapper

## Installation

#### Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add `https://github.com/evssar/YandexMapsMobileWrapper`
- Select "Branch" with "master"

#### Resources

Add "New Run Script Phase"

```
if [ -d "$CONFIGURATION_BUILD_DIR/$CONTENTS_FOLDER_PATH/YandexMapsMobileBinary_YandexMapsMobileBinary.bundle" ]; then
    if [ -d "$CONFIGURATION_BUILD_DIR/$CONTENTS_FOLDER_PATH/YandexMapsMobile.bundle" ]; then
        rm -rf $CONFIGURATION_BUILD_DIR/$CONTENTS_FOLDER_PATH/YandexMapsMobile.bundle
    fi

    mv $CONFIGURATION_BUILD_DIR/$CONTENTS_FOLDER_PATH/YandexMapsMobileBinary_YandexMapsMobileBinary.bundle $CONFIGURATION_BUILD_DIR/$CONTENTS_FOLDER_PATH/YandexMapsMobile.bundle
fi
```
