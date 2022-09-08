# The Vock

This is the Vock, a validator lock contract that can be checked on
validator startup.  One needs only point their validator at this
contract, and query `vocked(address)` for an address to determine if
the validator should start or not.

# Testing
```bash
forge test
```
