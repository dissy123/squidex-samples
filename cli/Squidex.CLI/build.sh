#/bin/bash

dotnet publish -r osx-arm64 --self-contained -c Release /p:PublishSingleFile=true
mkdir -p out/osx-arm64
cp -r Squidex.CLI/bin/Release/net7.0/osx-arm64/publish out/osx-arm64
cd out/osx-arm64/publish
zip ../../osx-arm64.zip *