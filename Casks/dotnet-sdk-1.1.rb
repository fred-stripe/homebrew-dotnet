cask 'dotnet-sdk-1.1' do
  version '1.1.7'
  sha256 '190352005c0e8ccde97a109dc727eb88e2eaacf833e3f72bc8204d54ba017268'

  url "https://download.microsoft.com/download/4/E/6/4E64A465-F02E-43AD-9A86-A08A223A82C3/dotnet-dev-osx-x64.#{version}.pkg"
  name '.NET Core SDK version 1.1.1'
  homepage 'https://github.com/dotnet/core/blob/master/release-notes/download-archives/1.1.6-sdk-download.md'

  depends_on macos: '>= :sierra'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

  uninstall pkgutil:  [
                      "com.microsoft.dotnet.dev.#{version}.component.osx.x64",
                      'com.microsoft.dotnet.hostfxr.1.0.1.component.osx.x64',
                      'com.microsoft.dotnet.hostfxr.1.1.0.component.osx.x64',
                      'com.microsoft.dotnet.sharedframework.Microsoft.NETCore.App.1.0.9.component.osx.x64',
                      'com.microsoft.dotnet.sharedframework.Microsoft.NETCore.App.1.1.6.component.osx.x64',
                      ]
end
