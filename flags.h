#ifndef FST_LIB_FLAGS_H_
#define FST_LIB_FLAGS_H_

#include <gflags/gflags.h>

#define SET_FLAGS(usage, argc, argv, rmflags) \
google::ParseCommandLineFlags(argc, argv, true);

inline void ShowUsage(bool long_usage = true) {}

#endif  // FST_LIB_FLAGS_H_
