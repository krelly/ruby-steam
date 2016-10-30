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
end
