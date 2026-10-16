# Pengrid releases

Downloads of [Pengrid](https://pengrid.app), the editor for white papers: write in Writer, design in Design, and merge the two. This repository holds only the release files; the source is private.

## Install on a Mac

**Download:** open the [latest release](https://github.com/karvidsson/pengrid-releases/releases/latest) and pick the dmg for your Mac.

- `Pengrid-<version>-arm64.dmg`: Apple silicon (M1 and later)
- `Pengrid-<version>-x64.dmg`: Intel

Every build is signed with a Developer ID and notarised by Apple, so it opens without a Gatekeeper warning. Pengrid updates itself.

**Homebrew:**

```sh
brew tap karvidsson/pengrid-releases https://github.com/karvidsson/pengrid-releases
brew install --cask pengrid
```

Pengrid needs macOS 12 Monterey or later.

## Questions

Open an issue here, or write via [pengrid.app](https://pengrid.app).
