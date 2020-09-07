###### forked from [115ek/manifest](https://github.com/115ek/manifest)

#### initialize & customize repo

    $ repo init \
        -u https://github.com/LineageOS/android.git \
        -b lineage-17.1


    $ mkdir .repo/local_manifests
    $ curl \
        -Lo .repo/local_manifests/togari.xml \
        https://github.com/fowof/local_manifests/raw/lineage-17.1/manifest.xml

#### download sources

    $ repo sync

#### build

    $ . build/envsetup.sh
    
then
    
    $ brunch togari
    
or

    $ breakfast togari && mka -j<jobs> bacon

