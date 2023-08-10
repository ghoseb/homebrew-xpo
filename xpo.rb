class Xpo < Formula
   desc "Highlight strings by regular expressions in the terminal"
   homepage "https://github.com/ghoseb/xpo"
   version "0.0.5"
   license "MIT"

   depends_on "zsh" => :optional

   on_macos do
     if Hardware::CPU.arm?
       url "https://github.com/ghoseb/xpo/releases/download/0.0.5/xpo_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
       sha256 "e9a50d980a116cec25121a4f78d88ff4386befecd02a457eaaaef8840bace3d6"

       def install
         bin.install "xpo"
       end
     end
     if Hardware::CPU.intel?
       url "https://github.com/ghoseb/xpo/releases/download/0.0.5/xpo_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
       sha256 "96892acebc3c30a3db6d63b3d4af52422a7ac3b6100c8c6b8d3932ac4dd715b8"

       def install
         bin.install "xpo"
       end
     end
   end
end
