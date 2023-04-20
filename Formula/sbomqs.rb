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
    version "0.0.14-hotfix"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.14-hotfix/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "ef9a047c784b84f28721b3a9329c5e58274d59b3835ba82dedcb87040a7b7ae5"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.14-hotfix/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "214c8772c7ffe1ea44979840e063055a5107eae8ec79d684a31b98d658534858"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.14-hotfix/sbomqs-linux-amd64", :using => :nounzip
            sha256 "e35d7fe2c7729d93661737e8e1730c267525833f343ac64b933bc99d2a8f5d50"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.14-hotfix/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "3efa871174e996283bfb5591061c6ebc6aae52e4031ded79d0f77b2e3e5730a9"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 
