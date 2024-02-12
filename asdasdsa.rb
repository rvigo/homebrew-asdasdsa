# typed: false
# frozen_string_literal: true

class Asdasdsa < Formula
  desc "asdasdsa" 
  homepage "https://github.com/rvigo/asdasdsa"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_aarch64-apple-darwin.tar.gz"
      sha256 ""

      def install
       bin.install "asdasdsa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_x86_64-apple-darwin.tar.gz"
      sha256 ""

      def install
        bin.install "asdasdsa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 ""

      def install
        bin.install "asdasdsa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""

      def install
        bin.install "asdasdsa"
      end
    end
  end
end
