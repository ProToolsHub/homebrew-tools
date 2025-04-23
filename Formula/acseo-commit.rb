class AcseoCommit < Formula
    desc "Outil de génération de messages de commit selon la convention ACSEO"
    homepage "https://github.com/ProToolsHub/ACSEO-COMMIT"
    url "https://raw.githubusercontent.com/ProToolsHub/homebrew-tools/main/archives/acseo-commit-1.0.0.tar.gz"
    sha256 "885ad58bb16bd92c5d23797dbcb06589012a65032d018827d09bf57b9931308e"
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