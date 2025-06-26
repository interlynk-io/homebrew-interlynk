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
  version 'v1.0.8'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.8/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '09ad71cc61bf5b6e7d90e0f9606675810d9118d09ad774a243729b8d39631c88'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.8/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'c240305aac3859d16c9492e9c2428a3566424bafd083b84173626c6a00ef4ce5'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.8/sbomqs-linux-amd64', using: :nounzip
      sha256 'e47992b5ec5ee154198c22c0725cf619d70c8cac9e6c18eef05b11c73b4e8df8'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.8/sbomqs-linux-arm64', using: :nounzip
      sha256 'a5287c235521a7768345b2360d12880d1c7612c9b4c916d03bf644427add812d'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
