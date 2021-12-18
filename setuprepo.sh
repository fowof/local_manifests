
set -e

cd "$(dirname "${BASH_SOURCE:-$0}")"

repo init \
  -u https://github.com/LineageOS/android.git \
  -b lineage-18.1

git clone \
  -b lineage-18.1 \
  https://github.com/lin18-microG/local_manifests.git \
  .repo/local_manifests

patch \
  .repo/local_manifests/setup_sony.xml \
  togari.patch

mv \
  manifest.xml \
  .repo/local_manifests/setup_sony.xml

[ -d .repo/local_manifests/.git ] && rm -rf .repo/local_manifests/.git
[ -d .git                       ] && rm -rf .git
[ -f README.md                  ] && rm README.md
[ -f manifest.xml               ] && rm manifest.xml
[ -f togari.patch               ] && rm togari.patch
[ -f "${BASH_SOURCE:-$0}"       ] && rm "${BASH_SOURCE:-$0}"
