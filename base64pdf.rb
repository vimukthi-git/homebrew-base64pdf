require 'rbconfig'
class Base64pdf < Formula
  desc ""
  homepage "https://github.com/vimukthi-git/base64pdf"
  version "0.0.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/vimukthi-git/base64pdf/releases/download/v0.0.1/base64pdf_0.0.1_darwin_amd64.zip"
      sha256 "4c7dca3ca617c58628c0c2b8dfc1bb9ceb9388eb0087ab804af4e55cc69206b3"
    when /linux/
      url "https://github.com/vimukthi-git/base64pdf/releases/download/v0.0.1/base64pdf_0.0.1_linux_amd64.tar.gz"
      sha256 "fbcbc4f6d4ec9014be4794d44990602396feca74cad738d32ac252f49a20fa14"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/vimukthi-git/base64pdf/releases/download/v0.0.1/base64pdf_0.0.1_darwin_386.zip"
      sha256 "e04892600c7b8f09a36a5bc7149eb141ea03501d5f715652f2dac8bd1c15d296"
    when /linux/
      url "https://github.com/vimukthi-git/base64pdf/releases/download/v0.0.1/base64pdf_0.0.1_linux_386.tar.gz"
      sha256 "d25f3894d9e9f1eb6a4290a4a2f25021180ce7b74c68b8f890fa3366dc38e20f"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "base64pdf"
  end

  test do
    system "base64pdf"
  end

end
