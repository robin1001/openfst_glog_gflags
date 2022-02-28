# Build openfst with glog/gflags/bazel

openfst defines it's own log and flags, and it shares the same names,
usage just like glog, gflags in a global namespace.
So there will be conflicts when a project use openfst, glog, gflags at the same time.

And here is the solution to solve the problem. please see `run.sh` for more details.
