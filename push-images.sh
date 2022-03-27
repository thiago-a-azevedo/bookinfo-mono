# Copyright Istio Authors
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

set -o errexit

if [ "$#" -ne 2 ]; then
    echo "Incorrect parameters"
    echo "Usage: push-images.sh <version> <container-repo>"
    exit 1
fi

TAG=$1
CONTAINER_REPO=$2


docker push ${CONTAINER_REPO}/examples-bookinfo-reviews:${TAG}
docker push ${CONTAINER_REPO}/examples-bookinfo-ratings:${TAG}
docker push ${CONTAINER_REPO}/examples-bookinfo-details:${TAG}
docker push ${CONTAINER_REPO}/examples-bookinfo-productpage:${TAG}
