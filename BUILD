package(default_visibility = ["//visibility:public"])
licenses(["notice"])  # Apache 2.0

cc_library(
    name = 'fst',
    srcs = [
        'src/lib/compat.cc',
        'src/lib/fst.cc',
        'src/lib/mapped-file.cc',
        'src/lib/properties.cc',
        'src/lib/symbol-table-ops.cc',
        'src/lib/symbol-table.cc',
        'src/lib/util.cc',
        'src/lib/weight.cc',
    ],
    hdrs = glob(['src/include/**/*.h']),
    copts = ['-Wno-sign-compare'],
    linkopts = ['-ldl'],
    includes = [
      'src/include/',
    ],
    deps = [
        '@com_github_google_glog//:glog',
        '@com_github_gflags_gflags//:gflags',
    ],
)


cc_library(
    name = 'fstscript',
    srcs = glob(['src/script/*.cc']),
    hdrs = glob(['src/include/**/*.h']),
    deps = [':fst'],
    copts = ['-Wno-sign-compare'],
    linkopts = ['-ldl'],
    includes = ['src/include/'],
)


cc_library(
    name = 'fstcompact',
    srcs = glob(['src/extensions/compact/*.cc']),
    hdrs = glob(['src/include/**/*.h']),
    deps = [':fst'],
    copts = ['-Wno-sign-compare'],
    linkopts = ['-ldl'],
    includes = ['src/include/'],
)


cc_library(
    name = 'fstconst',
    srcs = glob(['src/extensions/const/*.cc']),
    hdrs = glob(['src/include/**/*.h']),
    deps = [':fst'],
    copts = ['-Wno-sign-compare'],
    linkopts = ['-ldl'],
    includes = ['src/include/'],
)


cc_library(
    name = 'fstfar',
    srcs = [
        'src/extensions/far/far-class.cc',
        'src/extensions/far/farscript.cc',
        'src/extensions/far/getters.cc',
        'src/extensions/far/script-impl.cc',
        'src/extensions/far/stlist.cc',
        'src/extensions/far/strings.cc',
        'src/extensions/far/sttable.cc',
    ],
    hdrs = glob(['src/include/**/*.h']),
    deps = [':fst'],
    copts = ['-Wno-sign-compare'],
    linkopts = ['-ldl'],
    includes = ['src/include/'],
)


cc_library(
    name = 'fstlookahead',
    srcs = glob(['src/extensions/lookahead/*.cc']),
    hdrs = glob(['src/include/**/*.h']),
    deps = [':fst'],
    copts = ['-Wno-sign-compare'],
    linkopts = ['-ldl'],
    includes = ['src/include/'],
)

cc_binary(
    name = 'fstprint',
    srcs = [
        'src/bin/fstinfo.cc',
        'src/bin/fstinfo-main.cc',
    ],
    deps = [
        ':fst',
        ':fstscript',
    ],
)
