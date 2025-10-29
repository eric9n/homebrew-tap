class KunPeng < Formula
  desc "An ultra-fast, low-memory footprint and accurate taxonomy classifier for all"
  homepage "https://github.com/eric9n/Kun-peng"
  version "v0.7.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.6/kun_peng-v0.7.6-x86_64-apple-darwin"
      sha256 "4f62694f5c466328d28e3d3c9a67a9f4fc46176b71c1275a74961112347aacf8"
    else
      url "https://github.com/eric9n/Kun-peng/releases/download/v0.7.6/kun_peng-v0.7.6-aarch64-apple-darwin"
      sha256 "19ec84de7e138a82f9f22ea1bd4f7fb4e2b8caf84b9986bf9434a62bf70daafb"
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

