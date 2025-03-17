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
  desc "SBOM Assembler - Assembler & Edit for your SBOMs"
  homepage "https://github.com/interlynk-io/sbomasm"
  version "v1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v1.0.1/sbomasm-darwin-arm64", :using => :nounzip
      sha256 "46147281a73ab9f0cd69fff07e1bfdf79f1da4ced82b6709d6f973c5b290411d"

      def install
        bin.install "sbomasm-darwin-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v1.0.1/sbomasm-darwin-amd64", :using => :nounzip
      sha256 "b0fb0c9962a72a36506ccf1ebb3c260bc30e30933d064f9462c7efbbeb1c22b6"

      def install
        bin.install "sbomasm-darwin-amd64" => "sbomasm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v1.0.1/sbomasm-linux-arm64", :using => :nounzip
      sha256 "acdb1f09e5bf9ad8b4d74693d5ec9eefe1fb324690ef838ec3018f69cf4c87e6"

      def install
        bin.install "sbomasm-linux-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v1.0.1/sbomasm-linux-amd64", :using => :nounzip
      sha256 "77e171287f7deee568bf7d0dd9080a60e684084721d94ecd784584a0ce882e25"

      def install
        bin.install "sbomasm-linux-amd64" => "sbomasm"
      end
    end
  end

  test do
    system "#{bin}/sbomasm" "version"
  end
end
