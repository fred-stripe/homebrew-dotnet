cask 'dotnet-sdk-1.1' do
  version '1.1.6'
  sha256 '5cc1b6dc8814b7fd30746ccfdab1a9feec8b3276f126d2e61dab84c807be7ae9'

  url "https://download.microsoft.com/download/4/0/9/40979F7E-6DC8-4895-8ED5-0E7B45E74F94/dotnet-dev-osx-x64.#{version}.pkg"
  name '.NET Core SDK version 1.1.1'
  homepage 'https://github.com/dotnet/core/blob/master/release-notes/download-archives/1.1.6-sdk-download.md'

  depends_on macos: '>= :sierra'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.dev.1.1.6.component.osx.x64',
   'com.microsoft.dotnet.hostfxr.1.0.1.component.osx.x64',
   'com.microsoft.dotnet.hostfxr.1.1.0.component.osx.x64',
   'com.microsoft.dotnet.sharedframework.Microsoft.NETCore.App.1.0.8.component.osx.x64',
   'com.microsoft.dotnet.sharedframework.Microsoft.NETCore.App.1.1.5.component.osx.x64'

  zap trash: '~/.nuget'
end
