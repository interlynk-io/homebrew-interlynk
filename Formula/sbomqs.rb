# Copyright 2025 Interlynk.io
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

class Sbomqs < Formula
  desc 'SBOM Assess - Evaluate SBOM quality and compliance'
  homepage 'https://github.com/interlynk-io/sbomqs'
  version 'v1.0.6'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.6/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '7262d6788ba8b87ac32a8b59556044ee4631f8b5d62ee2b2e414ad3514745f97'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.6/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '2e3ca6a9e39e7a8b89afe3f07fd721525aa0625180e22083dec5af189d3e8193'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.6/sbomqs-linux-amd64', using: :nounzip
      sha256 '79494ace075f76b68454c38a4b10b3d4452e12e624830b1d1fb5d8eddb3a588d'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.6/sbomqs-linux-arm64', using: :nounzip
      sha256 '74b3dd468983706faabfefbb17d0b772c87343c968862c4f21e9978b0288059d'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
