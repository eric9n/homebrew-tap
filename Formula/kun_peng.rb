class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.10/kun_peng-v0.7.10-x86_64-apple-darwin"
      sha256 "f12aa53bfcdfd5f89e01343e487721e06ccf51264fcf511ad0d00c3d360829aa"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.10/kun_peng-v0.7.10-aarch64-apple-darwin"
      sha256 "c3640bce324aa2b8879d4c469e4b696e0fdf46349daef36793e6cc0979250191"
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

