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
    version "0.0.10"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.10/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "5bd7d67aeb08e8c68aa3a3e4a8afdc627fda7d9e6a8b1eeb658212fcfa0d5df9"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.10/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "dc409239408d63cb11cb1782811856f85982be6959baf980c30e9bdd12c9b370"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.10/sbomqs-linux-amd64", :using => :nounzip
            sha256 "3e313cb67d564487aa06c32effda24448a572e362675867333163b89071fc6ad"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.10/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "081c1965df14d0cdf81e6866d32f2909441c0842d55ab178fe41cb62a5b9b315"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 