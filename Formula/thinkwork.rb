class Thinkwork < Formula
  desc "CLI for deploying and managing Thinkwork agent infrastructure on AWS"
  homepage "https://github.com/thinkwork-ai/thinkwork"
  url "https://registry.npmjs.org/thinkwork-cli/-/thinkwork-cli-0.12.12.tgz"
  sha256 "11c1e1d8a14df7e168057dd6c29aca72c9874bd06d2e66d46d70e49a6fd9082c"
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
