class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.8/kun_peng-v0.7.8-x86_64-apple-darwin"
      sha256 "906aa1094ad6a2a949aa92e71efb1a5ebc889fe565d5c8119ff9c8c09053746f"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.8/kun_peng-v0.7.8-aarch64-apple-darwin"
      sha256 "fd5d69255d703df92ac647bb573a6110cc8505b7e7988af2297f76693590660e"
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

