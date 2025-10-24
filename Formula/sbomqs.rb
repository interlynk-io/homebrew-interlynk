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
  desc 'sbomqs: The Comprehensive SBOM Quality & Compliance Tool'
  homepage 'https://github.com/interlynk-io/sbomqs'
  version 'v1.3.0'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.3.0/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 'd4cb4e32f506a11f6359cd3b1f0fc91f4628f7c1a83a6391a6debabde28a3efa'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.3.0/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'cfb6b9d6f72d251e9edceb269a9bb300343dc8e37150136af4ce57dd953d61e8'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.3.0/sbomqs-linux-amd64', using: :nounzip
      sha256 '060e12b2afe3d5fcf31ef80cf27728224c95d12bcd417def12a09a594c518dac'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.3.0/sbomqs-linux-arm64', using: :nounzip
      sha256 '002e6a52ba7fa6cbbbca685e95d4f508629d04971402cc0233ad49a318da82bc'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
