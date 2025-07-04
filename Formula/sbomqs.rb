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
  version 'v1.0.9'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.9/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '754b1c0e94cbb9649c1e8f4fed84b1e8adcaec061e5b5804e464ebb00d19b89f'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.9/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'c2ec628f17692324b2b69d6f6dfa6e1978a586311aae03b6d74b72b99cb982b3'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.9/sbomqs-linux-amd64', using: :nounzip
      sha256 '27f89497fbd9f11b293fb8874548b3342a12cabe662eb80fd6fcb7f9555f20a9'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.9/sbomqs-linux-arm64', using: :nounzip
      sha256 'b64eb1e089798c7915fcd91a4baaf72a540fe94a59c869e07e1bba1f9228d182'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
