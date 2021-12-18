

cd "$(dirname "${BASH_SOURCE:-$0}")"

repo init \
    -u https://github.com/LineageOS/android.git \
    -b lineage-18.1

git clone \
  -b lineage-18.1 \
  https://github.com/lin18-microG/local_manifests.git \
  .repo/local_manifests

mv manifest.xml .repo/local_manifests/setup_sony.xml

rm -rf .repo/local_manifests/.git
rm -rf .git
rm README.md
rm "${BASH_SOURCE:-$0}"
