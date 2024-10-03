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
  version "v0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.1.6/sbomasm-darwin-arm64", :using => :nounzip
      sha256 "a833c8a2db03187baab57871e3baa7f65b55fbc6f8c0b34ac07b6227f1d919d5"

      def install
        bin.install "sbomasm-darwin-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.1.6/sbomasm-darwin-amd64", :using => :nounzip
      sha256 "a73eadc23b9bd429b6911238acaba7994e5d32b71984d977585b3af4ed84dc97"

      def install
        bin.install "sbomasm-darwin-amd64" => "sbomasm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.1.6/sbomasm-linux-arm64", :using => :nounzip
      sha256 "13b1144b86725952ce21a78a5680877c321886696a480b0e24ca1defcc7200aa"

      def install
        bin.install "sbomasm-linux-arm64" => "sbomasm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/interlynk-io/sbomasm/releases/download/v0.1.6/sbomasm-linux-amd64", :using => :nounzip
      sha256 "41607b94bbc0bded0eeb196fd2d590b6d9e0546ecc5a33e5f4f9dfd49f554e32"

      def install
        bin.install "sbomasm-linux-amd64" => "sbomasm"
      end
    end
  end

  test do
    system "#{bin}/sbomasm" "version"
  end
end
