# Copyright 2023 Interlynk.io
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sbomasm < Formula
  desc "SBOM Assembler - Assembler for your SBOMs"
  homepage "https://github.com/interlynk-io/sbomasm"
  version "v0.0.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.9/sbomasm-darwin-arm64", :using => :nounzip
      sha256 "25d7e397a1736103f58da3da53c0bc8cb790f4d59758077903c1705d207ebf93"

      def install
        bin.install "sbomasm-darwin-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.9/sbomasm-darwin-amd64", :using => :nounzip
      sha256 "5b46f632e61eb3bdd120ab710f23ccc41f876302eb31f9769387ee934ffdb8b4"

      def install
        bin.install "sbomasm-darwin-amd64" => "sbomasm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.9/sbomasm-linux-arm64", :using => :nounzip
      sha256 "8fa711f25d42cb1a70be0b02e9c63f1a9d691ef491ef2b752c8abb940fc452b6"

      def install
        bin.install "sbomasm-linux-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.0.9/sbomasm-linux-amd64", :using => :nounzip
      sha256 "42e1bde09a286ea7716e2f6583e3cbe3dc64bfa01c87e801decfa3e3da3ce6d2"

      def install
        bin.install "sbomasm-linux-amd64" => "sbomasm"
      end
    end
  end

  test do
    system "#{bin}/sbomasm" "version"
  end
end
