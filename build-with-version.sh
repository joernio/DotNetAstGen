#!/bin/bash
LATEST_TAG=`git describe --tags --abbrev=0 | cut -c2-`
VERSION=${1:-$LATEST_TAG}

echo "Running build with assigned version: $VERSION";

dotnet build ./DotNetAstGen/DotNetAstGen.csproj -c Release /p:Version=$VERSION /p:AssemblyVersion=$VERSION
