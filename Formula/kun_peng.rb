class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.5/kun_peng-v0.7.5-x86_64-apple-darwin"
      sha256 "fd18cf84ecc8a3b86b8b0dce6eb1d11751d0663477230ff1efafe7cbcd9453a2"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.5/kun_peng-v0.7.5-aarch64-apple-darwin"
      sha256 "0f7fcf08c1935c3f154cec373a46a58ecd1dca7375219e65c2b46d9fe882de80"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "kun_peng-#{version}-x86_64-apple-darwin" => "kun_peng"
    else
      bin.install "kun_peng-#{version}-aarch64-apple-darwin" => "kun_peng"
    end
  end

  test do
    system "#{bin}/kun_peng", "--version"
  end
end

