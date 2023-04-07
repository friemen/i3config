#!/usr/bin/env python3

# installation: pip install i3ipc
import i3ipc

def print_window_title(container):
    print(container.name if container.name is not None else "", flush=True)


def on_window_focus(i3, e):
    print_window_title(e.container)


i3 = i3ipc.Connection()
print_window_title(i3.get_tree().find_focused())
i3.on("window::focus", on_window_focus)
i3.main()
