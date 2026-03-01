class Secrets < Formula
  desc "A simple CLI toolset for managing encrypted secrets using GPG"
  homepage "https://www.github.com/jzaleski/secrets"
  url "https://storage.googleapis.com/jzaleski-files/secrets-0.0.2.tar.gz"
  sha256 "2b62dab0c44a83cea649087ed78beee6b80cf58176d6718f85c4fc34ff05c913"

  depends_on "gnupg"

  def install
    bin.install "check-secrets", "decrypt-secrets", "encrypt-secrets"
  end

  test do
    true
  end
end
