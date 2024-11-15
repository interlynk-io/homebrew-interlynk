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
  version 'v0.2.3'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.3/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '9c6e57fd852a75b9c715ac13b7d47216fb70c44e859dd0068b7c835cb0c3f15a'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.3/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '2961ae231e114c3dae57c1f89e85926afe235d0207764ac3e60c4125580ccbfb'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.3/sbomqs-linux-amd64', using: :nounzip
      sha256 '715555e861f061d0903ef091cc2812e1c1400e2dad2dbaeff488aa3a1255b252'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.3/sbomqs-linux-arm64', using: :nounzip
      sha256 '7832f817f8810e480122cde8fc46e2458a7a067d8f770fe4b32e0773a795b526'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
