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
    desc "sbomqs quality score for sboms"
    homepage "https://github.com/interlynk-io/sbomqs"
    version "v0.1.2"
    license "Apache-2.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.2/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "37ce42e199dc8ef55f08094d8137d628b4a879bed0a9f81a5a500208d94c3a3d"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.2/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "cf7ebdd736e8bcd1c381dfcae6e2ce4dcb33a71101bc9cd234c090ba8f847b1e"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end
    end

    on_linux do
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.2/sbomqs-linux-amd64", :using => :nounzip
            sha256 "83fbc6527d925d87d3a67f18ab16ba57582790757c935849e9d4f67b6cd416c9"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.1.2/sbomqs-linux-arm64", :using => :nounzip
            sha256 "de48f9c1deea640240ff6f44612c6f02225ae034237f0633dc118eb0777e2d84"

            def install
                bin.install "sbomqs-linux-arm64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end
