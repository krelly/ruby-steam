module Steam
  COMMUNITY_URL = 'https://steamcommunity.com'
  TRADEOFFER_URL = COMMUNITY_URL + '/tradeoffer'
  STORE_URL = 'https://store.steampowered.com'
  API_BASE_URL = 'https://api.steampowered.com'
  module Tradeoffer
    #	1	Invalid
    INVALID = 1
    #	2	This trade offer has been sent, neither party has acted on it yet.
    ACTIVE = 2
    #	3	The trade offer was accepted by the recipient and items were exchanged.
    ACCEPTED = 3
    #	4	The recipient made a counter offer
    COUNTERED = 4
    #	5	The trade offer was not accepted before the expiration date
    EXPIRED = 5
    #	6	The sender cancelled the offer
    CANCELED = 6
    #	7	The recipient declined the offer
    DECLINED = 7
    #	8	Some of the items in the offer are no longer available
    # (indicated by the missing flag in the output)
    INVALID_ITEMS = 8
    #	9	The offer hasn't been sent yet and is awaiting email/mobile confirmation.
    # The offer is only visible to the sender.
    CREATED_NEEDS_CONFIRMATION = 9
    #	10	Either party canceled the offer via email/mobile.
    # The offer is visible to both parties, even if the sender canceled it
    # before it was sent.
    CANCELED_BY_SECOND_FACTOR = 10
    #	11	The trade has been placed on hold.
    # The items involved in the trade have all been removed from both parties'
    # inventories and will be automatically delivered in the future.
    IN_ESCROW = 11
  end

  # TODO: autogenerate this from steam protobuf
  # https://github.com/SteamRE/SteamKit/blob/afda0753a3894c5c1fc4056aaf27ecc3f83426cb/SteamKit2/SteamKit2/Base/Generated/SteamLanguage.cs
  module Currency
    Invalid = 0
    USD = 1
    GBP = 2
    EUR = 3
    CHF = 4
    RUB = 5
    PLN = 6
    BRL = 7
    JPY = 8
    NOK = 9
    IDR = 10
    MYR = 11
    PHP = 12
    SGD = 13
    THB = 14
    VND = 15
    KRW = 16
    TRY = 17
    UAH = 18
    MXN = 19
    CAD = 20
    AUD = 21
    NZD = 22
    CNY = 23
    INR = 24
    CLP = 25
    PEN = 26
    COP = 27
    ZAR = 28
    HKD = 29
    TWD = 30
    SAR = 31
    AED = 32
    SEK = 33
    Max = 34
  end
end
