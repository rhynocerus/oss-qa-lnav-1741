# OSS QA Case Study: lnav #1741

Independent reproduction and comparison for:

- Project: `tstack/lnav`
- Issue: `#1741 - Unable to open a file at a specific line number`

## Objective

Test the behavior of lnav when navigating to a requested line using:

1. `file:line`
2. interactive `:goto NNN`

The goal is to provide a reproducible synthetic test case using no private logs.

## Environment

- Linux Mint
- Ubuntu 24.04 base
- Synthetic syslog-style input
- 500 and 5000 line test files

## Generate test data

```bash
./generate-log.sh synthetic.log 5000
