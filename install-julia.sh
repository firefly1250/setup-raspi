mkdir tmp
cd tmp
wget -O julia.tar.gz https://julialang-s3.julialang.org/bin/linux/aarch64/1.7/julia-1.7.1-linux-aarch64.tar.gz
tar -zxvf julia.tar.gz
rm julia.tar.gz
sudo rm -rf /opt/julia /usr/bin/julia
sudo mv `find . -name julia*` /opt/julia
sudo ln -s /opt/julia/bin/julia /usr/bin/julia
cd ..
rm -r tmp