# typed: false
# frozen_string_literal: true

RDFLINT_VERSION="0.1.5"

# Rdflint Formula
class Rdflint < Formula
  desc ": RDF linter"
  homepage "https://github.com/imas/rdflint"
  url "https://jitpack.io/com/github/imas/rdflint/#{RDFLINT_VERSION}/rdflint-#{RDFLINT_VERSION}.jar"
  sha256 "d96520dcc355a47cb71449d89ebebf460a1eb9d3bb3a379efbb65724972386c7"

  depends_on :macos
  depends_on "openjdk"

  def install
    libexec.install "rdflint-#{RDFLINT_VERSION}.jar"
    bin.write_jar_script libexec/"rdflint-#{RDFLINT_VERSION}.jar", "rdflint"
  end

  test do
    system bin/"rdflint"
  end
end
