class Secrets < Formula
  desc "A simple CLI toolset for managing encrypted secrets using GPG"
  homepage "https://www.github.com/jzaleski/secrets"
  url "https://storage.googleapis.com/jzaleski-files/secrets-0.0.1.tar.gz"
  sha256 "53d9ea085401074fda44a21c5db4fc7b7d7383b4308e75c6fb79b8ace8ca2a67"

  def install
    bin.install "check-secrets", "decrypt-secrets", "encrypt-secrets"
  end

  test do
    true
  end
end
