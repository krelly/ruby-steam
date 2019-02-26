Steam is a ruby gem (~1k LOC) designed to interoperate with Valve's Steam network.

It supports Steam Guard and CAPTCHAs.

Inspired by  [SteamKit](https://github.com/SteamRE/SteamKit) and its javascript ports: [Node-steam](https://github.com/seishun/node-steam) and [SteamUser](https://github.com/DoctorMcKay/node-steam-user)

## Features
 - Allows interaction with the Steam network via the Steam client protocol (using reverse-engineered Steam client api) - check Steam::Client class
 - It includes a class to work with Steam Web API (Steam::WebApi)
 - Sending tradeoffers (check examples/send_offer.rb)
 - Getting Steamcommunity market stats for item (Steam::Market)
 - SteamID conversion (Steam::SteamID)


## Getting started
1. Navigate into gem dir and build it:
`gem build steam`
2. Require built gem in Gemfile

## Usage
Check examples folder for details

You need to provide your Steam account credentials in examples/config/config.yml to actually run these examples.



## What is currently done:
- [x] Web-Login (cookies) + mobile TOTP code generation
- [x] class to interact with Web API 
- [x] Steam client protocol(protobuf)
  - [x] Extracting Protobuf definitions and Enums
  - [x] Websocket connection and package decoding
  - [x] Selecting best server to connect (closest and the least loaded) 
   - [x] Subscribing to custom Protobuff messages
- Trading:
    - [x] Sending/canceling tradeoffer 
    - [x] Accepting offers send to us 
    - [x] Mobile-confirmation 
    - [x] Getting counts of pending and new trade offers (not realtime, in TODO)
    - [x] Offer details, getting inventory
- Community market: in progress
    - [x] price_history (all items sold history)
    - [x] price overview (lowest price, volume, median calculated by steam )
- Account actions
    - [ ] creation 
    - [ ] adding and confirming(via SMS) phone number 

# Useful links
Some info about steam items: https://github.com/krelly/ruby-steam/wiki

Unofficial Steam Web API Documentation:
 https://lab.xpaw.me/steam_api_documentation.html