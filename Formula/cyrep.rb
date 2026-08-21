class Cyrep < Formula
  desc "Turn graph data into Markdown shaped for LLM context"
  homepage "https://github.com/pmuston/homebrew-cyrep"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-cyrep/releases/download/v0.1.0/cyrep-v0.1.0-darwin-arm64.tar.gz"
      sha256 "fb12e2f8a67ec47d586da31c2498b32259bfe3256aa6cf3b86a83e3a89d06652"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-cyrep/releases/download/v0.1.0/cyrep-v0.1.0-darwin-amd64.tar.gz"
      sha256 "85a73cec219b939abdb9c262e23f6bd0b31503b2ec328b6fd4a5d2eca1c2a1ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-cyrep/releases/download/v0.1.0/cyrep-v0.1.0-linux-arm64.tar.gz"
      sha256 "ef0924e15e216520e2ef1cc071a53c9dce407b3d3b615658d35600f7ebe730c2"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-cyrep/releases/download/v0.1.0/cyrep-v0.1.0-linux-amd64.tar.gz"
      sha256 "6b65c2166ce31dbe1798c7b558ecdc84386b584e09cea3aaccac20c43ddbbd60"
    end
  end

  def install
    bin.install "cyrep"
    man1.install "cyrep.1"
  end

  test do
    # --version, not a `version` subcommand: the reference CLI has no such
    # subcommand and adding one would widen the flag surface that
    # conformance/cli-parity.sh pins. Asserting the version rather than just
    # the name also catches a formula shipping assets from a different build.
    assert_match "cyrep 0.1.0", shell_output("#{bin}/cyrep --version")
  end
end
