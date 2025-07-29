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
  version 'v1.1.0'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.1.0/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 'ec2d08c0725c3fc1b99884e2eb8a4f61ba0ad08e38eec8636e15a21cb79280a2'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.1.0/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '00420a83355bae8f2a9643ec6c9fc40047dc5bfce5b754281bdb64721b9e162e'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.1.0/sbomqs-linux-amd64', using: :nounzip
      sha256 '85ca0367fc89ef3be40f74a5f1644ca5d4e5b51e992672f2803011bbefc35af9'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.1.0/sbomqs-linux-arm64', using: :nounzip
      sha256 '5d5d4a49665a7fe64a8145e3946b63cf3e78c8f421a987da278716372bb82dc2'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
