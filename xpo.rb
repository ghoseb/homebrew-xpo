class Xpo < Formula
   desc "Highlight strings by regular expressions in the terminal"
   homepage "https://github.com/ghoseb/xpo"
   version "0.0.6"
   license "MIT"

   depends_on "zsh" => :optional

   on_macos do
     if Hardware::CPU.arm?
       url "https://github.com/ghoseb/xpo/releases/download/0.0.6/xpo_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
       sha256 "1f1f395c98a1a66bdf611250f4ebbffbf9f0c182cfd914a0fef3c19de69a2c72"

       def install
         bin.install "xpo"
       end
     end
     if Hardware::CPU.intel?
       url "https://github.com/ghoseb/xpo/releases/download/0.0.6/xpo_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
       sha256 "80721cff3479e14d38fd2aae00d45d78cb16ba4a17e9c64d0b7e59f13456bb56"

       def install
         bin.install "xpo"
       end
     end
   end
end
