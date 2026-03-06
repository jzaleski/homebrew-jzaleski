class Secrets < Formula
  desc "A simple CLI toolset for managing encrypted secrets using GPG"
  homepage "https://www.github.com/jzaleski/secrets"
  url "https://storage.googleapis.com/jzaleski-files/secrets-0.0.3.tar.gz"
  sha256 "c0c211c943ce7024b65d03a4f354fe00ee77ef39bb7c50494445d481c9b5b2a6"

  depends_on "gnupg"

  def install
    bin.install(
      "check-secrets",
      "decrypt-secrets",
      "encrypt-secrets",
      "init-secrets",
    )
  end

  test do
    true
  end
end
