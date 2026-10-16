U.H GAME LIBRARY — LOCAL SETUP

IMPORTANT: Do NOT double-click index.html. Many included games use browser modules,
fetch(), root-relative assets, or other features that browsers block on file:// URLs.
That can make the game frame appear blank even when the game files are present.

EASIEST ON WINDOWS
1. Extract this entire ZIP folder first.
2. Open the UH_GAMES_SITE folder.
3. Double-click START_GAMES.bat.
4. Keep the black server window open while playing.
5. Your browser will open http://localhost:8000.

If START_GAMES.bat says Python is not installed, install Python 3 from https://www.python.org/downloads/
and select “Add Python to PATH” during setup, then double-click the launcher again.

MANUAL START (Windows/macOS/Linux)
1. Open a terminal in this folder.
2. Run: python -m http.server 8000
   (On some Windows installations, use: py -m http.server 8000)
3. Visit http://localhost:8000 in your browser.

Keep the folder structure intact, including truffled/ and covers/.
The catalog contains 505 games. This fixes the local file:// launch issue; some individual games
may still require internet access, third-party services, or browser features and may not run offline.
