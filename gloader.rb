# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gloader < Formula
  desc "gloader is database data migration tool from any source to any destination"
  homepage "https://github.com/mohammadv184/gloader"
  version "0.1.0-dev.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mohammadv184/gloader/releases/download/v0.1.0-dev.11/gloader-0.1.0-dev.11-darwin-arm64.tar.gz"
      sha256 "fb39e13bcc9afda4f3d457daab93f0052256edee2afead514620c6f75d805b0e"

      def install
        bin.install "gloader"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mohammadv184/gloader/releases/download/v0.1.0-dev.11/gloader-0.1.0-dev.11-darwin-amd64.tar.gz"
      sha256 "394a3d1fe520fcc670eb8599ae2fbf3cbcdcf4001e1f49f8ec4a11301ca061f2"

      def install
        bin.install "gloader"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mohammadv184/gloader/releases/download/v0.1.0-dev.11/gloader-0.1.0-dev.11-linux-arm64.tar.gz"
      sha256 "5ad0427c64d7b717b2b926cbc1ec60475b46bf7e48d9accc69dbd96279162429"

      def install
        bin.install "gloader"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mohammadv184/gloader/releases/download/v0.1.0-dev.11/gloader-0.1.0-dev.11-linux-amd64.tar.gz"
      sha256 "57cb242829a4e68b1dc6470a3c18bfe1349b6d0da51482523d47ea52c70b1227"

      def install
        bin.install "gloader"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mohammadv184/gloader/releases/download/v0.1.0-dev.11/gloader-0.1.0-dev.11-linux-armv6.tar.gz"
      sha256 "4c7f2f2bd204d55a73eb3cd35946348e6b648ce74bba86348730044a34b60f48"

      def install
        bin.install "gloader"
      end
    end
  end

  test do
    system "#{bin}/gloader", "version"
  end
end
