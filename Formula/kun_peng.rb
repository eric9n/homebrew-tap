class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.12/kun_peng-v0.7.12-x86_64-apple-darwin"
      sha256 "0ef2fd6c9c6398c510bdc20ae6a4857390d284a9ddf727c73fb2448c47d32dcd"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.12/kun_peng-v0.7.12-aarch64-apple-darwin"
      sha256 "933b65b1a60a845d26ad5a35baa8ec6e36e393b79cd45d4c8198d5523316826f"
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

