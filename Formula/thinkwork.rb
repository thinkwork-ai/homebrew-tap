class Thinkwork < Formula
  desc "CLI for deploying and managing Thinkwork agent infrastructure on AWS"
  homepage "https://github.com/thinkwork-ai/thinkwork"
  url "https://registry.npmjs.org/thinkwork-cli/-/thinkwork-cli-0.12.16.tgz"
  sha256 "ef64e359b92ae5ad82f83efb7ed6757a3a51c57629b940282bbeb353d5976c88"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/thinkwork"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thinkwork --version")
  end
end
