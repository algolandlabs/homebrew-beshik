# Homebrew formula of beshik, filled in by `just release-snapshot` (tasks/M12.md, M12-T03): the
# prebuilt archive of each platform, never the source. https://github.com/algolandlabs/beshik-release/releases/download/v0.1.0 is where the archives are downloaded
# from, 0.1.0 the version, @SHA_<os>_<arch>@ their SHA-256 sums.
class Beshik < Formula
  desc "Self-hosted single-server PaaS and its command-line client"
  homepage "https://github.com/algolandlabs/beshik-release"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.0/beshik_0.1.0_darwin_arm64.tar.gz"
      sha256 "9602edc1145c4b73403a307823af8a1dcbd5e631e235b24ce2cce9a423d521b7"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.0/beshik_0.1.0_darwin_amd64.tar.gz"
      sha256 "9c344a7e899ffc3f4df419e18e54e5ede48b1fe278a830f1fa32e629e30c8d11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.0/beshik_0.1.0_linux_arm64.tar.gz"
      sha256 "6c16e07777331f6e3c4cd2c19d60d4ab0edbb9b0ab0860a45ddea573466f881f"
    end
    on_intel do
      url "https://github.com/algolandlabs/beshik-release/releases/download/v0.1.0/beshik_0.1.0_linux_amd64.tar.gz"
      sha256 "4b244867a0156d6b9cfcd3c6cbe2a674aa4b889d48a4d7a8d725f30049197d72"
    end
  end

  def install
    bin.install "beshik"
    generate_completions_from_executable(bin/"beshik", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beshik version")
  end
end
