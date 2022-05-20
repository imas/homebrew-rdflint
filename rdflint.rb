# typed: false
# frozen_string_literal: true

RDFLINT_VERSION="0.2.0"

# Rdflint Formula
class Rdflint < Formula
  desc ": RDF linter"
  homepage "https://github.com/imas/rdflint"
  url "https://jitpack.io/com/github/imas/rdflint/#{RDFLINT_VERSION}/rdflint-#{RDFLINT_VERSION}.jar"
  sha256 "7c4381ef4517939c9426d94bcdb2fd5a0fc6e659777eea90b15dfba1dfcc3dfd"

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
