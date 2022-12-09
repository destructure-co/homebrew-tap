# typed: false
# frozen_string_literal: true

class Envtpl < Formula
  desc "A tiny binary for templating plain text with environment variables."
  homepage "https://github.com/matt-allan/envtpl"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/matt-allan/envtpl/releases/download/0.4.0/x86_64-macos.tar.xz"
      sha256 "e391c909a6176c4ed66a28a5f77afb7e347ef047ddce587c2ef659bef9b7f570"

      def install
        bin.install "envtpl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/matt-allan/envtpl/releases/download/0.4.0/aarch64-macos.tar.xz"
      sha256 "1ae57b30ba817caf8e06d2b113999e7f7b59dd62d94d4f548a435e569db6fbd9"

      def install
        bin.install "envtpl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/matt-allan/envtpl/releases/download/0.4.0/aarch64-linux.tar.xz"
      sha256 "6f48651f5f8a2e00eb287a1fa61b4075038a315f3e9b780bb40c06accf581427"

      def install
        bin.install "envtpl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/matt-allan/envtpl/releases/download/0.4.0/x86_64-linux-musl.tar.xz"
      sha256 "dc91c2eeb26d49c035468a1b00612cf3456c01563c28ef760e0f5b16a8241b99"

      def install
        bin.install "envtpl"
      end
    end
  end
end
