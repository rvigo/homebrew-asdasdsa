# typed: false
# frozen_string_literal: true

class Asdasdsa < Formula
  desc "asdasdsa" 
  homepage "https://github.com/rvigo/asdasdsa"
  version "9.9.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rvigo/asdasdsa/archive/refs/tags/v9.9.10.tar.gz"
      sha256 "bb2d3e654b61c3544defcdec4665f9b2d3598bbf6e091555d68199fbca8ee4eb"

      def install
       bin.install "asdasdsa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_x86_64-apple-darwin.tar.gz"
      sha256 "4c661249169cffb629994384644868d60b1b5c71ae76d20f891764a06bfc6678"

      def install
        bin.install "asdasdsa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e98145531dc83ec823a903b9eeeb79e399b93be282051523e323977deb797fd2"

      def install
        bin.install "asdasdsa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rvigo/asdasdsa/releases/download/v0.0.0/asdasdsa_0.0.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d31fef918c5a5ba215e7e7bffe64333b3ab8d73780d79133a81ccc5842e93d8"

      def install
        bin.install "asdasdsa"
      end
    end
  end
end
