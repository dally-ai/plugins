# Dally for Claude Code

Dally holds the public videos and posts of hundreds of creators, word for word, and your own videos and posts with their numbers, comments and DMs. This plugin connects Claude Code to it.

## Install

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

## What is in here

One plugin, `dally`, that points Claude Code at `https://dally.ai/mcp`. Signing in happens in your browser on Dally's own sign-in page.
