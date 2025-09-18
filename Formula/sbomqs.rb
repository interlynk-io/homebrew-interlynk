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
  version 'v1.2.0'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.2.0/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '272ebe341d3d7d884d49b6081c6817b7c6773e99f5d8da2b762127c54f745bb1'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.2.0/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'c351579032e4fcdec2b45426b2d563f11739aa09fe927c13ea8597e21126c5c2'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.2.0/sbomqs-linux-amd64', using: :nounzip
      sha256 'cb042f081656d8d9c646ff89ffe02cbbaa71ac858edd36e54c1554438a435bde'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.1.0/sbomqs-linux-arm64', using: :nounzip
      sha256 '53340be5f8f747aa185a40790b131fbda476778bb4c4c548c14f9d5dfa1eeabe'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
