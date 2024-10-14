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

class Sbomqs < Formula
  desc 'sbomqs quality score for sboms'
  homepage 'https://github.com/interlynk-io/sbomqs'
  version 'v0.2.0'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.0/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '3d290768dc4d8c0074baf029c64bc8733b50ba059573d07837bfea097889bc75'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.0/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'f5acfc38c08b9039475d4826f5174b062c54494fc8ef3754d16fcf5db0f35a0e'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.0/sbomqs-linux-amd64', using: :nounzip
      sha256 'b65c54c9a3f627356d52ef15dd049379001a61c9dc50d666de80e863bd505603'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.0/sbomqs-linux-arm64', using: :nounzip
      sha256 'b66cfe92ae18f8d0c47528e98f1aa5f20100484588a97b8e8b7e0edb9ca5a599'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
