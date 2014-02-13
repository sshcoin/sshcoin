# sshcoin

*Decentralized hosting for autonomous applications*

## Overview

Sshcoin is tool that autonomous applications can use to find and purchase
hosting from multiple providers.

Any company or individual may sell server hosting by exposing an API
that conforms to the sshcoin standard.

An autonomous application that provides a useful service can petition donations
from its users. The application can use sshcoin to manage its money and move
quickly between providers to resist takedown and censorship.

Sshcoin uses BitMessage to discover providers and Bitcoin to purchase servers.

## Installation

Add this line to your application's Gemfile:

    gem 'sshcoin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sshcoin

## Usage

```
SYNOPSIS
    sshcoin <command> [<subcommand>] [<options>]

PROVIDER COMMANDS
    sshcoin providers
        Show a list of providers that support the sshcoin api

    sshcoin provider plans <provider_id>
        Show a list of plans offered by this provider. The list includes
        plan_id, price_per_day, disk_size, memory and as well as other
        information from the provider.

SERVER COMMANDS
    sshcoin servers
        Show a list of our servers. List includes hostname, ip_address, provider_id, server_id

    sshcoin server purchase <provider_id> <plan_id> <number_of_days>
        Buy a server plan. Request a Bitcoin address for this payment.  Pay
        the price_per_day times the number_of_days.

    sshcoin server renew <provider_id> <server_id> <number_of_days>
        Renew a server. Request a Bitcoin address for this payment.  Pay the
        price_per_day times the number_of_days.

    sshcoin server subscribe <provider_id> <server_id> [<number_of_days>] [<max_days>]
        Subscribe to a server. Sets server to be renewed every number_of_days
        (default 1) for max_days (default unlimited)

    sshcoin authorize <server_id>
        Create a keypair and install public key on this server

    sshcoin ssh <server_id>
        Connect to this server as root

WALLET COMMANDS

    sshcoin wallets
        Show a list of our wallets. List includes wallet_id, name, balance

    sshcoin wallet generate [<name>]
        Generate a new wallet with optional name.

    sshcoin wallet send <wallet_id> <amount> <bitcoin_address>
        Send the amount of BTC from this wallet.

    sshcoin wallet destroy <wallet_id>
        Delete an empty wallet.

ADDRESS COMMANDS
    sshcoin address generate <wallet_id> [<label>]
        Generate a new address in this wallet with optional label.

    sshcoin addresses <wallet_id>
        Show a list of addresses in this wallet.
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
