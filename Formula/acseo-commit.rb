require "language/node"

class AcseoCommit < Formula
  desc "Outil de génération de messages de commit selon la convention ACSEO"
  homepage "https://github.com/ProToolsHub/ACSEO-COMMIT"
  url "https://raw.githubusercontent.com/ProToolsHub/homebrew-tools/main/archives/acseo-commit-1.0.1.tar.gz"
  sha256 "34a105a3de1e0c676d0b2d41b1d8efffde6eb668c60b5ba0fd1aaee2e05fb5ed"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "ACSEO Commit", shell_output("#{bin}/acseo-commit --version || true")
  end
end
