
set -e

DIR="$(dirname "${BASH_SOURCE:-$0}")"

cd "$DIR"

repo init \
  -u https://github.com/LineageOS/android.git \
  -b lineage-18.1

git clone \
  -b lineage-18.1 \
  https://github.com/lin18-microG/local_manifests \
  .repo/local_manifests

# curl -L \
#   https://raw.githubusercontent.com/lin18-microG/local_manifests/lineage-18.1/updates.xml \
#   -o .repo/local_manifests/updates.xml

mv \
  manifest.xml \
  .repo/local_manifests/setup_togari.xml

[ -d .git                       ] && rm -rf .git
[ -d .repo/local_manifests/.git ] && rm -rf .repo/local_manifests/.git
[ -f "${BASH_SOURCE:-$0}"       ] && rm "${BASH_SOURCE:-$0}"

old="$(basename "$(pwd)")"
cd ../
new=lineage-18.1-microG
suffix=
while [ -d "$new$suffix" ]
do
  suffix="-$(hexdump -vn 3 -e '"%02X"' /dev/urandom)"
done
new="$new$suffix"
mv "$old" "$new"
cd "$new"
