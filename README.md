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
codex plugin marketplace add dally-ai/plugins && codex plugin add dally@dally && codex mcp login dally
```

The last command opens Dally's sign-in in your browser. Start a new Codex session afterwards.

## Pictures open in your browser

When Dally answers with something to look at, such as reel cards you can play, a terminal can't show it. Dally sends a link to the same picture instead. In Claude Code, the plugin opens it in your browser when the answer finishes. It opens the last picture of each answer, once. The page asks you to sign in to Dally as the account you connected, which takes no clicks in the browser you signed in with.

To keep the link without the browser opening, set `DALLY_NO_OPEN=1` before starting Claude Code.

## What is in here

One plugin, `dally`, that points Claude Code and Codex at `https://dally.ai/mcp`, and two Claude Code hooks that open Dally's pictures in your browser. Signing in happens in your browser on Dally's own sign-in page.
