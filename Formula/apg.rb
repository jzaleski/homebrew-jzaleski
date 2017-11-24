class Apg < Formula
  desc "Automatic Password Generator"
  homepage "https://linux.die.net/man/1/apg"
  url "http://files.jzaleski.com/apg-2.2.3-osx.tar.gz"
  sha256 "3b0ece67d504bdf73736dea430223ce82aac813293cc91f905843b750b8a0fdd"

  bottle do
    cellar :any_skip_relocation
    rebuild 1
  end

  def install
    system "make", "standalone", "CC=#{ENV.cc}", "FLAGS=#{ENV.cflags}"
    bin.install "apg", "apgbfm"
    man1.install "doc/man/apg.1", "doc/man/apgbfm.1"
  end

  test do
    system bin/"apg", "-a", "1", "-M", "n", "-n", "3", "-m", "8", "-E", "23456789"
  end
end
