SET INSTALL_SERVICE=install -auto -superserver -guardian -z -name "forPEAKTOP"
SET START_SERVICE=start -name "forPEAKTOP"
instsvc %INSTALL_SERVICE%
instsvc %START_SERVICE%
