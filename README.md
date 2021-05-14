# NetWorkingBug

[XMNetworking](https://github.com/kangzubin/XMNetworking) is based on AFNetworking.I proposed a [PR](https://github.com/kangzubin/XMNetworking/pull/58) to XMNetworking. The [blog](https://www.cnblogs.com/buerjj/p/14768065.html).

The `master` branche is original branche.

The `Bug-Test` branche opened the [bug](https://github.com/AFNetworking/AFNetworking/issues/4591), Run the app will be crashed. Xcode will print the log `*** -[AFJSONResponseSerializer release]: message sent to deallocated instance 0x6000035132d0`

The `Bug-FixAndTest` branche fix the bug and include test code. you can see git commit log.
