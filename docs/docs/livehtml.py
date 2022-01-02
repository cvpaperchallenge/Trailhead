from typing import Final

import livereload


def _ignore(path: str) -> bool:
    return path.startswith("_build")


def main() -> None:
    server: Final = livereload.Server()
    server.watch(
        filepath="**/*",
        ignore=_ignore,
        # `shell=Ture` is needed for plantuml to find graphviz.
        func=livereload.shell("make html", shell=True),
    )
    server.serve(port=8000, host="0.0.0.0", root="_build/html")


if __name__ == "__main__":
    main()
