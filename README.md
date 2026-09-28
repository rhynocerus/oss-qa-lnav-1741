# OSS QA Case Study: lnav #1741

Independent reproduction and comparison for:

- Project: `tstack/lnav`
- Issue: `#1741 - Unable to open a file at a specific line number`

## Environment

- Linux Mint / Ubuntu 24.04 base
- lnav 0.14.1
- Synthetic syslog-style input
- 500 and 5000 line test files

## Objective

Compare three navigation methods:

1. interactive `:goto NNN`
2. `file:line`
3. command-line `-c ':goto NNN'`

## Generate test data

```bash
./generate-log.sh synthetic.log 5000
./generate-log.sh synthetic-500.log 500
