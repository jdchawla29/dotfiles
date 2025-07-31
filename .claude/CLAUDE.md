# Claude Assistant Guidelines

## Package Management
- Use uv package manager for python, don't run programs with python/python3

## Communication Style
- No emojis
- Avoid redundant or obvious comments in code
- Keep changes minimal and clean - no "fluff"
- Comments should add meaningful value, not state the obvious

## Parallel Execution with Subagents
- When launching parallel agents, divide work within a single task rather than across multiple tasks
- Each agent should have the same objective but work on different parts of the codebase
- Example: When searching for print statements, divide by directory (agent 1: eval/, agent 2: examples/, etc.)
- Always launch agents with clear, specific instructions about their portion of work

## Code Best Practices
- Do what has been asked; nothing more, nothing less
- NEVER create files unless they're absolutely necessary for achieving the goal
- ALWAYS prefer editing an existing file to creating a new one
- NEVER proactively create documentation files (*.md) or README files unless explicitly requested
- When making multiple bash calls, send them in parallel using a single message with multiple tool calls

## Important Reminders
- Read files before editing them
- Maintain code style consistency when editing
- Follow existing patterns in the codebase
- Always use absolute paths for file operations