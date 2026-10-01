# Dally for Claude Code and Codex

Dally holds the public videos and posts of hundreds of creators, word for word, and your own videos and posts with their numbers, comments and DMs. This plugin connects Claude Code or Codex to it.

## Install in Claude Code

Inside Claude Code, paste:

```
/plugin install dally --marketplace dally-ai/plugins
```

Press `y`, then Enter. Ask Claude anything that starts with "Using Dally,". The first time, Claude gives you a link to sign in to Dally; after you sign in, it answers in the same session.

From a terminal instead:

```
claude plugin marketplace add dally-ai/plugins && claude plugin install dally@dally
```

Without the plugin:

```
claude mcp add --transport http --scope user dally https://dally.ai/mcp && claude mcp login dally
```

Already added Dally to Claude on the web or the desktop app? It is already in Claude Code under the same Claude login, and you can skip all of this.

## Install in Codex

In a terminal:

```
codex mcp add dally --url https://dally.ai/mcp
```

Adding it opens Dally's sign-in in your browser. Start a new Codex session afterwards.

With the plugin instead:

```
codex plugin marketplace add dally-ai/plugins && codex plugin add dally@dally && codex mcp login dally
```

## Your Dally account

Dally's sign-in makes your account if you don't have one yet: sign up there with your email and a code, and your first question is answered. You don't need to visit dally.ai first.

## What opens in your browser

Some of Dally's answers are something to look at or press: reel cards you can play, a previs storyboard, your Profile Audit, a board of your automations, the Connect Instagram card. Claude and ChatGPT draw these inside the chat. A terminal can't, so when you use Dally from Claude Code or Codex, each one comes with its own browser link and a command that opens it. Your agent can run that command for you when the answer is ready, and the page opens in your browser.

- A canvas opens on dally.ai for the Dally account that asked for it. In the browser you signed in with, that takes no extra clicks.
- The Connect Instagram card opens Dally's connect page, which signs you in to Dally in that browser and hands you to Instagram's own sign-in.
- Codex keeps its commands in a sandbox that can't open a browser, so Codex asks you once before it opens one, or gives you the link.

To keep the links and never have a browser opened for you, set `DALLY_NO_AUTO_OPEN=1` in the environment your agent runs its commands in, for example in your shell profile:

```
export DALLY_NO_AUTO_OPEN=1
```

## For agents

Dally is the MCP server at `https://dally.ai/mcp`. It signs in with OAuth (dynamic client registration or a client ID metadata document) and makes the Dally account during that sign-in. A `dally_show` answer to a host that can't draw it carries `url`, the page that shows it, and `open`, a shell command that opens `url` with `open` on macOS or `xdg-open` on Linux and does nothing when `DALLY_NO_AUTO_OPEN` is set. More at https://dally.ai/llms.txt.

## What is in here

One plugin, `dally`, that points Claude Code and Codex at `https://dally.ai/mcp`. Signing in happens in your browser on Dally's own sign-in page.
