# typed: false
# frozen_string_literal: true

# DO NOT EDIT THIS FILE

class Asdasdsa < Formula
  desc "Brew formula"
  homepage "https://github.com/rvigo/asdasdsa"
  url "https://github.com/rvigo/asdasdsa/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "d30ed609fd3062cc9528550117e599500a6b2bfbbe5ab392ee75f1bc775593e8"
  license "MIT"
  head "https://github.com/rvigo/asdasdsa.git", branch: "main"

  bottle do
    root_url "https://github.com/rvigo/homebrew-asdasdsa/releases/download/asdasdsa-1.2.1"
    sha256 cellar: :any_skip_relocation, ventura:      "2df41bceb06f3aa314a2d14b4f21a6f69f28a26be239afa54c2bc51b9d4c47bb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5c71b3020d08416a8c2ab019f6d69505a7171c803e2be8ba4c48cbd6bb3685ea"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
