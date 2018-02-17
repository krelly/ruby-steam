# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require_relative 'steammessages_base.pb'
require_relative 'encrypted_app_ticket.pb'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class CMsgClientHeartBeat < ::Protobuf::Message; end
    class CMsgClientUDSP2PSessionStarted < ::Protobuf::Message; end
    class CMsgClientUDSP2PSessionEnded < ::Protobuf::Message; end
    class CMsgClientRegisterAuthTicketWithCM < ::Protobuf::Message; end
    class CMsgClientTicketAuthComplete < ::Protobuf::Message; end
    class CMsgClientLogon < ::Protobuf::Message; end
    class CMsgClientLogonResponse < ::Protobuf::Message; end
    class CMsgClientRequestWebAPIAuthenticateUserNonce < ::Protobuf::Message; end
    class CMsgClientRequestWebAPIAuthenticateUserNonceResponse < ::Protobuf::Message; end
    class CMsgClientLogOff < ::Protobuf::Message; end
    class CMsgClientLoggedOff < ::Protobuf::Message; end
    class CMsgClientCMList < ::Protobuf::Message; end
    class CMsgClientP2PConnectionInfo < ::Protobuf::Message; end
    class CMsgClientP2PConnectionFailInfo < ::Protobuf::Message; end
    class CMsgClientGetAppOwnershipTicket < ::Protobuf::Message; end
    class CMsgClientGetAppOwnershipTicketResponse < ::Protobuf::Message; end
    class CMsgClientSessionToken < ::Protobuf::Message; end
    class CMsgClientGameConnectTokens < ::Protobuf::Message; end
    class CMsgGSServerType < ::Protobuf::Message; end
    class CMsgGSStatusReply < ::Protobuf::Message; end
    class CMsgGSPlayerList < ::Protobuf::Message
      class Player < ::Protobuf::Message; end

    end

    class CMsgGSUserPlaying < ::Protobuf::Message; end
    class CMsgGSDisconnectNotice < ::Protobuf::Message; end
    class CMsgClientGamesPlayed < ::Protobuf::Message
      class GamePlayed < ::Protobuf::Message; end

    end

    class CMsgGSApprove < ::Protobuf::Message; end
    class CMsgGSDeny < ::Protobuf::Message; end
    class CMsgGSKick < ::Protobuf::Message; end
    class CMsgClientAuthList < ::Protobuf::Message; end
    class CMsgClientAuthListAck < ::Protobuf::Message; end
    class CMsgClientFriendsList < ::Protobuf::Message
      class Friend < ::Protobuf::Message; end

    end

    class CMsgClientFriendsGroupsList < ::Protobuf::Message
      class FriendGroup < ::Protobuf::Message; end
      class FriendGroupsMembership < ::Protobuf::Message; end

    end

    class CMsgClientPlayerNicknameList < ::Protobuf::Message
      class PlayerNickname < ::Protobuf::Message; end

    end

    class CMsgClientSetPlayerNickname < ::Protobuf::Message; end
    class CMsgClientSetPlayerNicknameResponse < ::Protobuf::Message; end
    class CMsgClientLicenseList < ::Protobuf::Message
      class License < ::Protobuf::Message; end

    end

    class CMsgClientLBSSetScore < ::Protobuf::Message; end
    class CMsgClientLBSSetScoreResponse < ::Protobuf::Message; end
    class CMsgClientLBSSetUGC < ::Protobuf::Message; end
    class CMsgClientLBSSetUGCResponse < ::Protobuf::Message; end
    class CMsgClientLBSFindOrCreateLB < ::Protobuf::Message; end
    class CMsgClientLBSFindOrCreateLBResponse < ::Protobuf::Message; end
    class CMsgClientLBSGetLBEntries < ::Protobuf::Message; end
    class CMsgClientLBSGetLBEntriesResponse < ::Protobuf::Message
      class Entry < ::Protobuf::Message; end

    end

    class CMsgClientAccountInfo < ::Protobuf::Message; end
    class CMsgClientAppMinutesPlayedData < ::Protobuf::Message
      class AppMinutesPlayedData < ::Protobuf::Message; end

    end

    class CMsgClientIsLimitedAccount < ::Protobuf::Message; end
    class CMsgClientRequestFriendData < ::Protobuf::Message; end
    class CMsgClientChangeStatus < ::Protobuf::Message; end
    class CMsgPersonaChangeResponse < ::Protobuf::Message; end
    class CMsgClientPersonaState < ::Protobuf::Message
      class Friend < ::Protobuf::Message; end

    end

    class CMsgClientFriendProfileInfo < ::Protobuf::Message; end
    class CMsgClientFriendProfileInfoResponse < ::Protobuf::Message; end
    class CMsgClientServerList < ::Protobuf::Message
      class Server < ::Protobuf::Message; end

    end

    class CMsgClientRequestedClientStats < ::Protobuf::Message
      class StatsToSend < ::Protobuf::Message; end

    end

    class CMsgClientStat2 < ::Protobuf::Message
      class StatDetail < ::Protobuf::Message; end

    end

    class CMsgClientMMSCreateLobby < ::Protobuf::Message; end
    class CMsgClientMMSCreateLobbyResponse < ::Protobuf::Message; end
    class CMsgClientMMSJoinLobby < ::Protobuf::Message; end
    class CMsgClientMMSJoinLobbyResponse < ::Protobuf::Message
      class Member < ::Protobuf::Message; end

    end

    class CMsgClientMMSLeaveLobby < ::Protobuf::Message; end
    class CMsgClientMMSLeaveLobbyResponse < ::Protobuf::Message; end
    class CMsgClientMMSGetLobbyList < ::Protobuf::Message
      class Filter < ::Protobuf::Message; end

    end

    class CMsgClientMMSGetLobbyListResponse < ::Protobuf::Message
      class Lobby < ::Protobuf::Message; end

    end

    class CMsgClientMMSSetLobbyData < ::Protobuf::Message; end
    class CMsgClientMMSSetLobbyDataResponse < ::Protobuf::Message; end
    class CMsgClientMMSGetLobbyData < ::Protobuf::Message; end
    class CMsgClientMMSLobbyData < ::Protobuf::Message
      class Member < ::Protobuf::Message; end

    end

    class CMsgClientMMSSendLobbyChatMsg < ::Protobuf::Message; end
    class CMsgClientMMSLobbyChatMsg < ::Protobuf::Message; end
    class CMsgClientMMSSetLobbyOwner < ::Protobuf::Message; end
    class CMsgClientMMSSetLobbyOwnerResponse < ::Protobuf::Message; end
    class CMsgClientMMSSetLobbyLinked < ::Protobuf::Message; end
    class CMsgClientMMSSetLobbyGameServer < ::Protobuf::Message; end
    class CMsgClientMMSLobbyGameServerSet < ::Protobuf::Message; end
    class CMsgClientMMSUserJoinedLobby < ::Protobuf::Message; end
    class CMsgClientMMSUserLeftLobby < ::Protobuf::Message; end
    class CMsgClientMMSInviteToLobby < ::Protobuf::Message; end
    class CMsgClientUDSInviteToGame < ::Protobuf::Message; end
    class CMsgClientChatInvite < ::Protobuf::Message; end
    class CMsgClientConnectionStats < ::Protobuf::Message
      class Stats_Logon < ::Protobuf::Message; end
      class Stats_UDP < ::Protobuf::Message; end
      class Stats_VConn < ::Protobuf::Message; end

    end

    class CMsgClientServersAvailable < ::Protobuf::Message
      class Server_Types_Available < ::Protobuf::Message; end

    end

    class CMsgClientGetUserStats < ::Protobuf::Message; end
    class CMsgClientGetUserStatsResponse < ::Protobuf::Message
      class Stats < ::Protobuf::Message; end
      class Achievement_Blocks < ::Protobuf::Message; end

    end

    class CMsgClientStoreUserStatsResponse < ::Protobuf::Message
      class Stats_Failed_Validation < ::Protobuf::Message; end

    end

    class CMsgClientStoreUserStats2 < ::Protobuf::Message
      class Stats < ::Protobuf::Message; end

    end

    class CMsgClientStatsUpdated < ::Protobuf::Message
      class Updated_Stats < ::Protobuf::Message; end

    end

    class CMsgClientStoreUserStats < ::Protobuf::Message
      class Stats_To_Store < ::Protobuf::Message; end

    end

    class CMsgClientGetClientDetails < ::Protobuf::Message; end
    class CMsgClientReportOverlayDetourFailure < ::Protobuf::Message; end
    class CMsgClientGetClientDetailsResponse < ::Protobuf::Message
      class Game < ::Protobuf::Message; end

    end

    class CMsgClientGetClientAppList < ::Protobuf::Message; end
    class CMsgClientGetClientAppListResponse < ::Protobuf::Message
      class App < ::Protobuf::Message
        class DLC < ::Protobuf::Message; end

      end


    end

    class CMsgClientInstallClientApp < ::Protobuf::Message; end
    class CMsgClientInstallClientAppResponse < ::Protobuf::Message; end
    class CMsgClientUninstallClientApp < ::Protobuf::Message; end
    class CMsgClientUninstallClientAppResponse < ::Protobuf::Message; end
    class CMsgClientSetClientAppUpdateState < ::Protobuf::Message; end
    class CMsgClientSetClientAppUpdateStateResponse < ::Protobuf::Message; end
    class CMsgClientUFSUploadFileRequest < ::Protobuf::Message; end
    class CMsgClientUFSUploadFileResponse < ::Protobuf::Message; end
    class CMsgClientUFSUploadCommit < ::Protobuf::Message
      class File < ::Protobuf::Message; end

    end

    class CMsgClientUFSUploadCommitResponse < ::Protobuf::Message
      class File < ::Protobuf::Message; end

    end

    class CMsgClientUFSFileChunk < ::Protobuf::Message; end
    class CMsgClientUFSTransferHeartbeat < ::Protobuf::Message; end
    class CMsgClientUFSUploadFileFinished < ::Protobuf::Message; end
    class CMsgClientUFSDeleteFileRequest < ::Protobuf::Message; end
    class CMsgClientUFSDeleteFileResponse < ::Protobuf::Message; end
    class CMsgClientUFSGetFileListForApp < ::Protobuf::Message; end
    class CMsgClientUFSGetFileListForAppResponse < ::Protobuf::Message
      class File < ::Protobuf::Message; end

    end

    class CMsgClientUFSDownloadRequest < ::Protobuf::Message; end
    class CMsgClientUFSDownloadResponse < ::Protobuf::Message; end
    class CMsgClientUFSLoginRequest < ::Protobuf::Message; end
    class CMsgClientUFSLoginResponse < ::Protobuf::Message; end
    class CMsgClientRequestEncryptedAppTicket < ::Protobuf::Message; end
    class CMsgClientRequestEncryptedAppTicketResponse < ::Protobuf::Message; end
    class CMsgClientWalletInfoUpdate < ::Protobuf::Message; end
    class CMsgClientAppInfoUpdate < ::Protobuf::Message; end
    class CMsgClientAppInfoChanges < ::Protobuf::Message; end
    class CMsgClientAppInfoRequest < ::Protobuf::Message
      class App < ::Protobuf::Message; end

    end

    class CMsgClientAppInfoResponse < ::Protobuf::Message
      class App < ::Protobuf::Message
        class Section < ::Protobuf::Message; end

      end


    end

    class CMsgClientPackageInfoRequest < ::Protobuf::Message; end
    class CMsgClientPackageInfoResponse < ::Protobuf::Message
      class Package < ::Protobuf::Message; end

    end

    class CMsgClientPICSChangesSinceRequest < ::Protobuf::Message; end
    class CMsgClientPICSChangesSinceResponse < ::Protobuf::Message
      class PackageChange < ::Protobuf::Message; end
      class AppChange < ::Protobuf::Message; end

    end

    class CMsgClientPICSProductInfoRequest < ::Protobuf::Message
      class AppInfo < ::Protobuf::Message; end
      class PackageInfo < ::Protobuf::Message; end

    end

    class CMsgClientPICSProductInfoResponse < ::Protobuf::Message
      class AppInfo < ::Protobuf::Message; end
      class PackageInfo < ::Protobuf::Message; end

    end

    class CMsgClientPICSAccessTokenRequest < ::Protobuf::Message; end
    class CMsgClientPICSAccessTokenResponse < ::Protobuf::Message
      class PackageToken < ::Protobuf::Message; end
      class AppToken < ::Protobuf::Message; end

    end

    class CMsgClientUFSGetUGCDetails < ::Protobuf::Message; end
    class CMsgClientUFSGetUGCDetailsResponse < ::Protobuf::Message; end
    class CMsgClientUFSGetSingleFileInfo < ::Protobuf::Message; end
    class CMsgClientUFSGetSingleFileInfoResponse < ::Protobuf::Message; end
    class CMsgClientUFSShareFile < ::Protobuf::Message; end
    class CMsgClientUFSShareFileResponse < ::Protobuf::Message; end
    class CMsgClientNewLoginKey < ::Protobuf::Message; end
    class CMsgClientNewLoginKeyAccepted < ::Protobuf::Message; end
    class CMsgClientAMGetClanOfficers < ::Protobuf::Message; end
    class CMsgClientAMGetClanOfficersResponse < ::Protobuf::Message; end
    class CMsgClientAMGetPersonaNameHistory < ::Protobuf::Message
      class IdInstance < ::Protobuf::Message; end

    end

    class CMsgClientAMGetPersonaNameHistoryResponse < ::Protobuf::Message
      class NameTableInstance < ::Protobuf::Message
        class NameInstance < ::Protobuf::Message; end

      end


    end

    class CMsgClientDeregisterWithServer < ::Protobuf::Message; end
    class CMsgClientClanState < ::Protobuf::Message
      class NameInfo < ::Protobuf::Message; end
      class UserCounts < ::Protobuf::Message; end
      class Event < ::Protobuf::Message; end

    end

    class CMsgClientFriendMsg < ::Protobuf::Message; end
    class CMsgClientFriendMsgIncoming < ::Protobuf::Message; end
    class CMsgClientAddFriend < ::Protobuf::Message; end
    class CMsgClientAddFriendResponse < ::Protobuf::Message; end
    class CMsgClientRemoveFriend < ::Protobuf::Message; end
    class CMsgClientHideFriend < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgClientUDSP2PSessionStarted
      optional :fixed64, :steamid_remote, 1
      optional :int32, :appid, 2
    end

    class CMsgClientUDSP2PSessionEnded
      optional :fixed64, :steamid_remote, 1
      optional :int32, :appid, 2
      optional :int32, :session_length_sec, 3
      optional :int32, :session_error, 4
      optional :int32, :nattype, 5
      optional :int32, :bytes_recv, 6
      optional :int32, :bytes_sent, 7
      optional :int32, :bytes_sent_relay, 8
      optional :int32, :bytes_recv_relay, 9
      optional :int32, :time_to_connect_ms, 10
    end

    class CMsgClientRegisterAuthTicketWithCM
      optional :uint32, :protocol_version, 1
      optional :bytes, :ticket, 3
      optional :uint64, :client_instance_id, 4
    end

    class CMsgClientTicketAuthComplete
      optional :fixed64, :steam_id, 1
      optional :fixed64, :game_id, 2
      optional :uint32, :estate, 3
      optional :uint32, :eauth_session_response, 4
      optional :bytes, :DEPRECATED_ticket, 5
      optional :uint32, :ticket_crc, 6
      optional :uint32, :ticket_sequence, 7
      optional :fixed64, :owner_steam_id, 8
    end

    class CMsgClientLogon
      optional :uint32, :protocol_version, 1
      optional :uint32, :obfustucated_private_ip, 2
      optional :uint32, :cell_id, 3
      optional :uint32, :last_session_id, 4
      optional :uint32, :client_package_version, 5
      optional :string, :client_language, 6
      optional :uint32, :client_os_type, 7
      optional :bool, :should_remember_password, 8, :default => false
      optional :string, :wine_version, 9
      optional :uint32, :ping_ms_from_cell_search, 10
      optional :uint32, :public_ip, 20
      optional :uint32, :qos_level, 21
      optional :fixed64, :client_supplied_steam_id, 22
      optional :bytes, :machine_id, 30
      optional :uint32, :launcher_type, 31, :default => 0
      optional :uint32, :ui_mode, 32, :default => 0
      optional :bytes, :steam2_auth_ticket, 41
      optional :string, :email_address, 42
      optional :fixed32, :rtime32_account_creation, 43
      optional :string, :account_name, 50
      optional :string, :password, 51
      optional :string, :game_server_token, 52
      optional :string, :login_key, 60
      optional :bool, :was_converted_deprecated_msg, 70, :default => false
      optional :string, :anon_user_target_account_name, 80
      optional :fixed64, :resolved_user_steam_id, 81
      optional :int32, :eresult_sentryfile, 82
      optional :bytes, :sha_sentryfile, 83
      optional :string, :auth_code, 84
      optional :int32, :otp_type, 85
      optional :uint32, :otp_value, 86
      optional :string, :otp_identifier, 87
      optional :bool, :steam2_ticket_request, 88
      optional :bytes, :sony_psn_ticket, 90
      optional :string, :sony_psn_service_id, 91
      optional :bool, :create_new_psn_linked_account_if_needed, 92, :default => false
      optional :string, :sony_psn_name, 93
      optional :int32, :game_server_app_id, 94
      optional :bool, :steamguard_dont_remember_computer, 95
      optional :string, :machine_name, 96
      optional :string, :machine_name_userchosen, 97
      optional :string, :country_override, 98
      optional :bool, :is_steam_box, 99
      optional :uint64, :client_instance_id, 100
      optional :string, :two_factor_code, 101
      optional :bool, :supports_rate_limit_response, 102
    end

    class CMsgClientLogonResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :out_of_game_heartbeat_seconds, 2
      optional :int32, :in_game_heartbeat_seconds, 3
      optional :uint32, :public_ip, 4
      optional :fixed32, :rtime32_server_time, 5
      optional :uint32, :account_flags, 6
      optional :uint32, :cell_id, 7
      optional :string, :email_domain, 8
      optional :bytes, :steam2_ticket, 9
      optional :int32, :eresult_extended, 10
      optional :string, :webapi_authenticate_user_nonce, 11
      optional :uint32, :cell_id_ping_threshold, 12
      optional :bool, :use_pics, 13
      optional :string, :vanity_url, 14
      optional :fixed64, :client_supplied_steamid, 20
      optional :string, :ip_country_code, 21
      optional :bytes, :parental_settings, 22
      optional :bytes, :parental_setting_signature, 23
      optional :int32, :count_loginfailures_to_migrate, 24
      optional :int32, :count_disconnects_to_migrate, 25
      optional :int32, :ogs_data_report_time_window, 26
      optional :uint64, :client_instance_id, 27
    end

    class CMsgClientRequestWebAPIAuthenticateUserNonceResponse
      optional :int32, :eresult, 1, :default => 2
      optional :string, :webapi_authenticate_user_nonce, 11
    end

    class CMsgClientLoggedOff
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgClientCMList
      repeated :uint32, :cm_addresses, 1
      repeated :uint32, :cm_ports, 2
    end

    class CMsgClientP2PConnectionInfo
      optional :fixed64, :steam_id_dest, 1
      optional :fixed64, :steam_id_src, 2
      optional :uint32, :app_id, 3
      optional :bytes, :candidate, 4
    end

    class CMsgClientP2PConnectionFailInfo
      optional :fixed64, :steam_id_dest, 1
      optional :fixed64, :steam_id_src, 2
      optional :uint32, :app_id, 3
      optional :uint32, :ep2p_session_error, 4
    end

    class CMsgClientGetAppOwnershipTicket
      optional :uint32, :app_id, 1
    end

    class CMsgClientGetAppOwnershipTicketResponse
      optional :uint32, :eresult, 1, :default => 2
      optional :uint32, :app_id, 2
      optional :bytes, :ticket, 3
    end

    class CMsgClientSessionToken
      optional :uint64, :token, 1
    end

    class CMsgClientGameConnectTokens
      optional :uint32, :max_tokens_to_keep, 1, :default => 10
      repeated :bytes, :tokens, 2
    end

    class CMsgGSServerType
      optional :uint32, :app_id_served, 1
      optional :uint32, :flags, 2
      optional :uint32, :game_ip_address, 3
      optional :uint32, :game_port, 4
      optional :string, :game_dir, 5
      optional :string, :game_version, 6
      optional :uint32, :game_query_port, 7
    end

    class CMsgGSStatusReply
      optional :bool, :is_secure, 1
    end

    class CMsgGSPlayerList
      class Player
        optional :uint64, :steam_id, 1
        optional :uint32, :public_ip, 2
        optional :bytes, :token, 3
      end

      repeated ::SteamCommunity::Internal::CMsgGSPlayerList::Player, :players, 1
    end

    class CMsgGSUserPlaying
      optional :fixed64, :steam_id, 1
      optional :uint32, :public_ip, 2
      optional :bytes, :token, 3
    end

    class CMsgGSDisconnectNotice
      optional :fixed64, :steam_id, 1
    end

    class CMsgClientGamesPlayed
      class GamePlayed
        optional :uint64, :steam_id_gs, 1
        optional :fixed64, :game_id, 2
        optional :uint32, :game_ip_address, 3
        optional :uint32, :game_port, 4
        optional :bool, :is_secure, 5
        optional :bytes, :token, 6
        optional :string, :game_extra_info, 7
        optional :bytes, :game_data_blob, 8
        optional :uint32, :process_id, 9
        optional :uint32, :streaming_provider_id, 10
        optional :uint32, :game_flags, 11
        optional :uint32, :owner_id, 12
        optional :string, :vr_hmd_vendor, 13
        optional :string, :vr_hmd_model, 14
        optional :uint32, :launch_option_type, 15, :default => 0
        optional :int32, :primary_controller_type, 16, :default => -1
        optional :string, :primary_steam_controller_serial, 17
        optional :uint32, :total_steam_controller_count, 18, :default => 0
        optional :uint32, :total_non_steam_controller_count, 19, :default => 0
        optional :uint64, :controller_workshop_file_id, 20, :default => 0
      end

      repeated ::SteamCommunity::Internal::CMsgClientGamesPlayed::GamePlayed, :games_played, 1
      optional :uint32, :client_os_type, 2
    end

    class CMsgGSApprove
      optional :fixed64, :steam_id, 1
      optional :fixed64, :owner_steam_id, 2
    end

    class CMsgGSDeny
      optional :fixed64, :steam_id, 1
      optional :int32, :edeny_reason, 2
      optional :string, :deny_string, 3
    end

    class CMsgGSKick
      optional :fixed64, :steam_id, 1
      optional :int32, :edeny_reason, 2
    end

    class CMsgClientAuthList
      optional :uint32, :tokens_left, 1
      optional :uint32, :last_request_seq, 2
      optional :uint32, :last_request_seq_from_server, 3
      repeated ::SteamCommunity::Internal::CMsgAuthTicket, :tickets, 4
      repeated :uint32, :app_ids, 5
      optional :uint32, :message_sequence, 6
    end

    class CMsgClientAuthListAck
      repeated :uint32, :ticket_crc, 1
      repeated :uint32, :app_ids, 2
      optional :uint32, :message_sequence, 3
    end

    class CMsgClientFriendsList
      class Friend
        optional :fixed64, :ulfriendid, 1
        optional :uint32, :efriendrelationship, 2
      end

      optional :bool, :bincremental, 1
      repeated ::SteamCommunity::Internal::CMsgClientFriendsList::Friend, :friends, 2
      optional :uint32, :max_friend_count, 3
      optional :uint32, :active_friend_count, 4
      optional :bool, :friends_limit_hit, 5
    end

    class CMsgClientFriendsGroupsList
      class FriendGroup
        optional :int32, :nGroupID, 1
        optional :string, :strGroupName, 2
      end

      class FriendGroupsMembership
        optional :fixed64, :ulSteamID, 1
        optional :int32, :nGroupID, 2
      end

      optional :bool, :bremoval, 1
      optional :bool, :bincremental, 2
      repeated ::SteamCommunity::Internal::CMsgClientFriendsGroupsList::FriendGroup, :friendGroups, 3
      repeated ::SteamCommunity::Internal::CMsgClientFriendsGroupsList::FriendGroupsMembership, :memberships, 4
    end

    class CMsgClientPlayerNicknameList
      class PlayerNickname
        optional :fixed64, :steamid, 1
        optional :string, :nickname, 3
      end

      optional :bool, :removal, 1
      optional :bool, :incremental, 2
      repeated ::SteamCommunity::Internal::CMsgClientPlayerNicknameList::PlayerNickname, :nicknames, 3
    end

    class CMsgClientSetPlayerNickname
      optional :fixed64, :steamid, 1
      optional :string, :nickname, 2
    end

    class CMsgClientSetPlayerNicknameResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientLicenseList
      class License
        optional :uint32, :package_id, 1
        optional :fixed32, :time_created, 2
        optional :fixed32, :time_next_process, 3
        optional :int32, :minute_limit, 4
        optional :int32, :minutes_used, 5
        optional :uint32, :payment_method, 6
        optional :uint32, :flags, 7
        optional :string, :purchase_country_code, 8
        optional :uint32, :license_type, 9
        optional :int32, :territory_code, 10
        optional :int32, :change_number, 11
        optional :uint32, :owner_id, 12
        optional :uint32, :initial_period, 13
        optional :uint32, :initial_time_unit, 14
        optional :uint32, :renewal_period, 15
        optional :uint32, :renewal_time_unit, 16
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientLicenseList::License, :licenses, 2
    end

    class CMsgClientLBSSetScore
      optional :uint32, :app_id, 1
      optional :int32, :leaderboard_id, 2
      optional :int32, :score, 3
      optional :bytes, :details, 4
      optional :int32, :upload_score_method, 5
    end

    class CMsgClientLBSSetScoreResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :leaderboard_entry_count, 2
      optional :bool, :score_changed, 3
      optional :int32, :global_rank_previous, 4
      optional :int32, :global_rank_new, 5
    end

    class CMsgClientLBSSetUGC
      optional :uint32, :app_id, 1
      optional :int32, :leaderboard_id, 2
      optional :fixed64, :ugc_id, 3
    end

    class CMsgClientLBSSetUGCResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgClientLBSFindOrCreateLB
      optional :uint32, :app_id, 1
      optional :int32, :leaderboard_sort_method, 2
      optional :int32, :leaderboard_display_type, 3
      optional :bool, :create_if_not_found, 4
      optional :string, :leaderboard_name, 5
    end

    class CMsgClientLBSFindOrCreateLBResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :leaderboard_id, 2
      optional :int32, :leaderboard_entry_count, 3
      optional :int32, :leaderboard_sort_method, 4, :default => 0
      optional :int32, :leaderboard_display_type, 5, :default => 0
      optional :string, :leaderboard_name, 6
    end

    class CMsgClientLBSGetLBEntries
      optional :int32, :app_id, 1
      optional :int32, :leaderboard_id, 2
      optional :int32, :range_start, 3
      optional :int32, :range_end, 4
      optional :int32, :leaderboard_data_request, 5
      repeated :fixed64, :steamids, 6
    end

    class CMsgClientLBSGetLBEntriesResponse
      class Entry
        optional :fixed64, :steam_id_user, 1
        optional :int32, :global_rank, 2
        optional :int32, :score, 3
        optional :bytes, :details, 4
        optional :fixed64, :ugc_id, 5
      end

      optional :int32, :eresult, 1, :default => 2
      optional :int32, :leaderboard_entry_count, 2
      repeated ::SteamCommunity::Internal::CMsgClientLBSGetLBEntriesResponse::Entry, :entries, 3
    end

    class CMsgClientAccountInfo
      optional :string, :persona_name, 1
      optional :string, :ip_country, 2
      optional :int32, :count_authed_computers, 5
      optional :uint32, :account_flags, 7
      optional :uint64, :facebook_id, 8
      optional :string, :facebook_name, 9
      optional :bool, :steamguard_notify_newmachines, 14
      optional :string, :steamguard_machine_name_user_chosen, 15
      optional :bool, :is_phone_verified, 16
      optional :uint32, :two_factor_state, 17
      optional :bool, :is_phone_identifying, 18
      optional :bool, :is_phone_needing_reverify, 19
    end

    class CMsgClientAppMinutesPlayedData
      class AppMinutesPlayedData
        optional :uint32, :app_id, 1
        optional :int32, :forever, 2
        optional :int32, :last_two_weeks, 3
      end

      repeated ::SteamCommunity::Internal::CMsgClientAppMinutesPlayedData::AppMinutesPlayedData, :minutes_played, 1
    end

    class CMsgClientIsLimitedAccount
      optional :bool, :bis_limited_account, 1
      optional :bool, :bis_community_banned, 2
      optional :bool, :bis_locked_account, 3
      optional :bool, :bis_limited_account_allowed_to_invite_friends, 4
    end

    class CMsgClientRequestFriendData
      optional :uint32, :persona_state_requested, 1
      repeated :fixed64, :friends, 2
    end

    class CMsgClientChangeStatus
      optional :uint32, :persona_state, 1
      optional :string, :player_name, 2
      optional :bool, :is_auto_generated_name, 3
      optional :bool, :high_priority, 4
      optional :bool, :persona_set_by_user, 5
      optional :uint32, :persona_state_flags, 6, :default => 0
    end

    class CMsgPersonaChangeResponse
      optional :uint32, :result, 1
      optional :string, :player_name, 2
    end

    class CMsgClientPersonaState
      class Friend
        optional :fixed64, :friendid, 1
        optional :uint32, :persona_state, 2
        optional :uint32, :game_played_app_id, 3
        optional :uint32, :game_server_ip, 4
        optional :uint32, :game_server_port, 5
        optional :uint32, :persona_state_flags, 6
        optional :uint32, :online_session_instances, 7
        optional :uint32, :published_instance_id, 8
        optional :bool, :persona_set_by_user, 10
        optional :string, :player_name, 15
        optional :uint32, :query_port, 20
        optional :fixed64, :steamid_source, 25
        optional :bytes, :avatar_hash, 31
        optional :uint32, :last_logoff, 45
        optional :uint32, :last_logon, 46
        optional :uint32, :clan_rank, 50
        optional :string, :game_name, 55
        optional :fixed64, :gameid, 56
        optional :bytes, :game_data_blob, 60
        optional :string, :clan_tag, 65
        optional :string, :facebook_name, 66
        optional :uint64, :facebook_id, 67
      end

      optional :uint32, :status_flags, 1
      repeated ::SteamCommunity::Internal::CMsgClientPersonaState::Friend, :friends, 2
    end

    class CMsgClientFriendProfileInfo
      optional :fixed64, :steamid_friend, 1
    end

    class CMsgClientFriendProfileInfoResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :steamid_friend, 2
      optional :uint32, :time_created, 3
      optional :string, :real_name, 4
      optional :string, :city_name, 5
      optional :string, :state_name, 6
      optional :string, :country_name, 7
      optional :string, :headline, 8
      optional :string, :summary, 9
    end

    class CMsgClientServerList
      class Server
        optional :uint32, :server_type, 1
        optional :uint32, :server_ip, 2
        optional :uint32, :server_port, 3
      end

      repeated ::SteamCommunity::Internal::CMsgClientServerList::Server, :servers, 1
    end

    class CMsgClientRequestedClientStats
      class StatsToSend
        optional :uint32, :client_stat, 1
        optional :uint32, :stat_aggregate_method, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientRequestedClientStats::StatsToSend, :stats_to_send, 1
    end

    class CMsgClientStat2
      class StatDetail
        optional :uint32, :client_stat, 1
        optional :int64, :ll_value, 2
        optional :uint32, :time_of_day, 3
        optional :uint32, :cell_id, 4
        optional :uint32, :depot_id, 5
        optional :uint32, :app_id, 6
      end

      repeated ::SteamCommunity::Internal::CMsgClientStat2::StatDetail, :stat_detail, 1
    end

    class CMsgClientMMSCreateLobby
      optional :uint32, :app_id, 1
      optional :int32, :max_members, 2
      optional :int32, :lobby_type, 3
      optional :int32, :lobby_flags, 4
      optional :uint32, :cell_id, 5
      optional :uint32, :public_ip, 6
      optional :bytes, :metadata, 7
      optional :string, :persona_name_owner, 8
    end

    class CMsgClientMMSCreateLobbyResponse
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :int32, :eresult, 3, :default => 2
    end

    class CMsgClientMMSJoinLobby
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :string, :persona_name, 3
    end

    class CMsgClientMMSJoinLobbyResponse
      class Member
        optional :fixed64, :steam_id, 1
        optional :string, :persona_name, 2
        optional :bytes, :metadata, 3
      end

      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :int32, :chat_room_enter_response, 3
      optional :int32, :max_members, 4
      optional :int32, :lobby_type, 5
      optional :int32, :lobby_flags, 6
      optional :fixed64, :steam_id_owner, 7
      optional :bytes, :metadata, 8
      repeated ::SteamCommunity::Internal::CMsgClientMMSJoinLobbyResponse::Member, :members, 9
    end

    class CMsgClientMMSLeaveLobby
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
    end

    class CMsgClientMMSLeaveLobbyResponse
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :int32, :eresult, 3, :default => 2
    end

    class CMsgClientMMSGetLobbyList
      class Filter
        optional :string, :key, 1
        optional :string, :value, 2
        optional :int32, :comparision, 3
        optional :int32, :filter_type, 4
      end

      optional :uint32, :app_id, 1
      optional :int32, :num_lobbies_requested, 3
      optional :uint32, :cell_id, 4
      optional :uint32, :public_ip, 5
      repeated ::SteamCommunity::Internal::CMsgClientMMSGetLobbyList::Filter, :filters, 6
    end

    class CMsgClientMMSGetLobbyListResponse
      class Lobby
        optional :fixed64, :steam_id, 1
        optional :int32, :max_members, 2
        optional :int32, :lobby_type, 3
        optional :int32, :lobby_flags, 4
        optional :bytes, :metadata, 5
        optional :int32, :num_members, 6
        optional :float, :distance, 7
        optional :int64, :weight, 8
      end

      optional :uint32, :app_id, 1
      optional :int32, :eresult, 3, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientMMSGetLobbyListResponse::Lobby, :lobbies, 4
    end

    class CMsgClientMMSSetLobbyData
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_member, 3
      optional :int32, :max_members, 4
      optional :int32, :lobby_type, 5
      optional :int32, :lobby_flags, 6
      optional :bytes, :metadata, 7
    end

    class CMsgClientMMSSetLobbyDataResponse
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :int32, :eresult, 3, :default => 2
    end

    class CMsgClientMMSGetLobbyData
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
    end

    class CMsgClientMMSLobbyData
      class Member
        optional :fixed64, :steam_id, 1
        optional :string, :persona_name, 2
        optional :bytes, :metadata, 3
      end

      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :int32, :num_members, 3
      optional :int32, :max_members, 4
      optional :int32, :lobby_type, 5
      optional :int32, :lobby_flags, 6
      optional :fixed64, :steam_id_owner, 7
      optional :bytes, :metadata, 8
      repeated ::SteamCommunity::Internal::CMsgClientMMSLobbyData::Member, :members, 9
      optional :uint32, :lobby_cellid, 10
    end

    class CMsgClientMMSSendLobbyChatMsg
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_target, 3
      optional :bytes, :lobby_message, 4
    end

    class CMsgClientMMSLobbyChatMsg
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_sender, 3
      optional :bytes, :lobby_message, 4
    end

    class CMsgClientMMSSetLobbyOwner
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_new_owner, 3
    end

    class CMsgClientMMSSetLobbyOwnerResponse
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :int32, :eresult, 3, :default => 2
    end

    class CMsgClientMMSSetLobbyLinked
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_lobby2, 3
    end

    class CMsgClientMMSSetLobbyGameServer
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :uint32, :game_server_ip, 3
      optional :uint32, :game_server_port, 4
      optional :fixed64, :game_server_steam_id, 5
    end

    class CMsgClientMMSLobbyGameServerSet
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :uint32, :game_server_ip, 3
      optional :uint32, :game_server_port, 4
      optional :fixed64, :game_server_steam_id, 5
    end

    class CMsgClientMMSUserJoinedLobby
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_user, 3
      optional :string, :persona_name, 4
    end

    class CMsgClientMMSUserLeftLobby
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_user, 3
      optional :string, :persona_name, 4
    end

    class CMsgClientMMSInviteToLobby
      optional :uint32, :app_id, 1
      optional :fixed64, :steam_id_lobby, 2
      optional :fixed64, :steam_id_user_invited, 3
    end

    class CMsgClientUDSInviteToGame
      optional :fixed64, :steam_id_dest, 1
      optional :fixed64, :steam_id_src, 2
      optional :string, :connect_string, 3
    end

    class CMsgClientChatInvite
      optional :fixed64, :steam_id_invited, 1
      optional :fixed64, :steam_id_chat, 2
      optional :fixed64, :steam_id_patron, 3
      optional :int32, :chatroom_type, 4
      optional :fixed64, :steam_id_friend_chat, 5
      optional :string, :chat_name, 6
      optional :fixed64, :game_id, 7
    end

    class CMsgClientConnectionStats
      class Stats_Logon
        optional :int32, :connect_attempts, 1
        optional :int32, :connect_successes, 2
        optional :int32, :connect_failures, 3
        optional :int32, :connections_dropped, 4
        optional :uint32, :seconds_running, 5
        optional :uint32, :msec_tologonthistime, 6
        optional :uint32, :count_bad_cms, 7
      end

      class Stats_UDP
        optional :uint64, :pkts_sent, 1
        optional :uint64, :bytes_sent, 2
        optional :uint64, :pkts_recv, 3
        optional :uint64, :pkts_processed, 4
        optional :uint64, :bytes_recv, 5
      end

      class Stats_VConn
        optional :uint32, :connections_udp, 1
        optional :uint32, :connections_tcp, 2
        optional ::SteamCommunity::Internal::CMsgClientConnectionStats::Stats_UDP, :stats_udp, 3
        optional :uint64, :pkts_abandoned, 4
        optional :uint64, :conn_req_received, 5
        optional :uint64, :pkts_resent, 6
        optional :uint64, :msgs_sent, 7
        optional :uint64, :msgs_sent_failed, 8
        optional :uint64, :msgs_recv, 9
        optional :uint64, :datagrams_sent, 10
        optional :uint64, :datagrams_recv, 11
        optional :uint64, :bad_pkts_recv, 12
        optional :uint64, :unknown_conn_pkts_recv, 13
        optional :uint64, :missed_pkts_recv, 14
        optional :uint64, :dup_pkts_recv, 15
        optional :uint64, :failed_connect_challenges, 16
        optional :uint32, :micro_sec_avg_latency, 17
        optional :uint32, :micro_sec_min_latency, 18
        optional :uint32, :micro_sec_max_latency, 19
        optional :uint32, :mem_pool_msg_in_use, 20
      end

      optional ::SteamCommunity::Internal::CMsgClientConnectionStats::Stats_Logon, :stats_logon, 1
      optional ::SteamCommunity::Internal::CMsgClientConnectionStats::Stats_VConn, :stats_vconn, 2
    end

    class CMsgClientServersAvailable
      class Server_Types_Available
        optional :uint32, :server, 1
        optional :bool, :changed, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientServersAvailable::Server_Types_Available, :server_types_available, 1
      optional :uint32, :server_type_for_auth_services, 2
    end

    class CMsgClientGetUserStats
      optional :fixed64, :game_id, 1
      optional :uint32, :crc_stats, 2
      optional :int32, :schema_local_version, 3
      optional :fixed64, :steam_id_for_user, 4
    end

    class CMsgClientGetUserStatsResponse
      class Stats
        optional :uint32, :stat_id, 1
        optional :uint32, :stat_value, 2
      end

      class Achievement_Blocks
        optional :uint32, :achievement_id, 1
        repeated :fixed32, :unlock_time, 2
      end

      optional :fixed64, :game_id, 1
      optional :int32, :eresult, 2, :default => 2
      optional :uint32, :crc_stats, 3
      optional :bytes, :schema, 4
      repeated ::SteamCommunity::Internal::CMsgClientGetUserStatsResponse::Stats, :stats, 5
      repeated ::SteamCommunity::Internal::CMsgClientGetUserStatsResponse::Achievement_Blocks, :achievement_blocks, 6
    end

    class CMsgClientStoreUserStatsResponse
      class Stats_Failed_Validation
        optional :uint32, :stat_id, 1
        optional :uint32, :reverted_stat_value, 2
      end

      optional :fixed64, :game_id, 1
      optional :int32, :eresult, 2, :default => 2
      optional :uint32, :crc_stats, 3
      repeated ::SteamCommunity::Internal::CMsgClientStoreUserStatsResponse::Stats_Failed_Validation, :stats_failed_validation, 4
      optional :bool, :stats_out_of_date, 5
    end

    class CMsgClientStoreUserStats2
      class Stats
        optional :uint32, :stat_id, 1
        optional :uint32, :stat_value, 2
      end

      optional :fixed64, :game_id, 1
      optional :fixed64, :settor_steam_id, 2
      optional :fixed64, :settee_steam_id, 3
      optional :uint32, :crc_stats, 4
      optional :bool, :explicit_reset, 5
      repeated ::SteamCommunity::Internal::CMsgClientStoreUserStats2::Stats, :stats, 6
    end

    class CMsgClientStatsUpdated
      class Updated_Stats
        optional :uint32, :stat_id, 1
        optional :uint32, :stat_value, 2
      end

      optional :fixed64, :steam_id, 1
      optional :fixed64, :game_id, 2
      optional :uint32, :crc_stats, 3
      repeated ::SteamCommunity::Internal::CMsgClientStatsUpdated::Updated_Stats, :updated_stats, 4
    end

    class CMsgClientStoreUserStats
      class Stats_To_Store
        optional :uint32, :stat_id, 1
        optional :uint32, :stat_value, 2
      end

      optional :fixed64, :game_id, 1
      optional :bool, :explicit_reset, 2
      repeated ::SteamCommunity::Internal::CMsgClientStoreUserStats::Stats_To_Store, :stats_to_store, 3
    end

    class CMsgClientReportOverlayDetourFailure
      repeated :string, :failure_strings, 1
    end

    class CMsgClientGetClientDetailsResponse
      class Game
        optional :uint32, :appid, 1
        optional :string, :extra_info, 2
        optional :uint32, :time_running_sec, 3
      end

      optional :uint32, :package_version, 1
      optional :uint32, :protocol_version, 8
      optional :string, :os, 2
      optional :string, :machine_name, 3
      optional :string, :ip_public, 4
      optional :string, :ip_private, 5
      optional :uint64, :bytes_available, 7
      repeated ::SteamCommunity::Internal::CMsgClientGetClientDetailsResponse::Game, :games_running, 6
    end

    class CMsgClientGetClientAppList
      optional :bool, :media, 1
      optional :bool, :tools, 2
      optional :bool, :games, 3
      optional :bool, :only_installed, 4
      optional :bool, :only_changing, 5
    end

    class CMsgClientGetClientAppListResponse
      class App
        class DLC
          optional :uint32, :appid, 1
          optional :bool, :installed, 2
        end

        optional :uint32, :appid, 1
        optional :string, :category, 2
        optional :string, :app_type, 10
        optional :bool, :favorite, 3
        optional :bool, :installed, 4
        optional :bool, :auto_update, 5
        optional :uint64, :bytes_downloaded, 6
        optional :uint64, :bytes_needed, 7
        optional :uint32, :bytes_download_rate, 8
        optional :bool, :download_paused, 11
        optional :uint32, :num_downloading, 12
        optional :uint32, :num_paused, 13
        optional :bool, :changing, 14
        optional :bool, :available_on_platform, 15
        repeated ::SteamCommunity::Internal::CMsgClientGetClientAppListResponse::App::DLC, :dlcs, 9
      end

      repeated ::SteamCommunity::Internal::CMsgClientGetClientAppListResponse::App, :apps, 1
      optional :uint64, :bytes_available, 2
    end

    class CMsgClientInstallClientApp
      optional :uint32, :appid, 1
    end

    class CMsgClientInstallClientAppResponse
      optional :uint32, :result, 1
    end

    class CMsgClientUninstallClientApp
      optional :uint32, :appid, 1
    end

    class CMsgClientUninstallClientAppResponse
      optional :uint32, :result, 1
    end

    class CMsgClientSetClientAppUpdateState
      optional :uint32, :appid, 1
      optional :bool, :update, 2
    end

    class CMsgClientSetClientAppUpdateStateResponse
      optional :uint32, :result, 1
    end

    class CMsgClientUFSUploadFileRequest
      optional :uint32, :app_id, 1
      optional :uint32, :file_size, 2
      optional :uint32, :raw_file_size, 3
      optional :bytes, :sha_file, 4
      optional :uint64, :time_stamp, 5
      optional :string, :file_name, 6
      optional :uint32, :platforms_to_sync_deprecated, 7
      optional :uint32, :platforms_to_sync, 8, :default => 4294967295
      optional :uint32, :cell_id, 9
      optional :bool, :can_encrypt, 10
    end

    class CMsgClientUFSUploadFileResponse
      optional :int32, :eresult, 1, :default => 2
      optional :bytes, :sha_file, 2
      optional :bool, :use_http, 3
      optional :string, :http_host, 4
      optional :string, :http_url, 5
      optional :bytes, :kv_headers, 6
      optional :bool, :use_https, 7
      optional :bool, :encrypt_file, 8
    end

    class CMsgClientUFSUploadCommit
      class File
        optional :int32, :eresult, 1, :default => 2
        optional :uint32, :app_id, 2
        optional :bytes, :sha_file, 3
        optional :uint32, :cub_file, 4
        optional :string, :file_name, 5
      end

      repeated ::SteamCommunity::Internal::CMsgClientUFSUploadCommit::File, :files, 1
    end

    class CMsgClientUFSUploadCommitResponse
      class File
        optional :int32, :eresult, 1, :default => 2
        optional :uint32, :app_id, 2
        optional :bytes, :sha_file, 3
      end

      repeated ::SteamCommunity::Internal::CMsgClientUFSUploadCommitResponse::File, :files, 1
    end

    class CMsgClientUFSFileChunk
      optional :bytes, :sha_file, 1
      optional :uint32, :file_start, 2
      optional :bytes, :data, 3
    end

    class CMsgClientUFSUploadFileFinished
      optional :int32, :eresult, 1, :default => 2
      optional :bytes, :sha_file, 2
    end

    class CMsgClientUFSDeleteFileRequest
      optional :uint32, :app_id, 1
      optional :string, :file_name, 2
      optional :bool, :is_explicit_delete, 3
    end

    class CMsgClientUFSDeleteFileResponse
      optional :int32, :eresult, 1, :default => 2
      optional :string, :file_name, 2
    end

    class CMsgClientUFSGetFileListForApp
      repeated :uint32, :apps_to_query, 1
      optional :bool, :send_path_prefixes, 2
    end

    class CMsgClientUFSGetFileListForAppResponse
      class File
        optional :uint32, :app_id, 1
        optional :string, :file_name, 2
        optional :bytes, :sha_file, 3
        optional :uint64, :time_stamp, 4
        optional :uint32, :raw_file_size, 5
        optional :bool, :is_explicit_delete, 6
        optional :uint32, :platforms_to_sync, 7
        optional :uint32, :path_prefix_index, 8
      end

      repeated ::SteamCommunity::Internal::CMsgClientUFSGetFileListForAppResponse::File, :files, 1
      repeated :string, :path_prefixes, 2
    end

    class CMsgClientUFSDownloadRequest
      optional :uint32, :app_id, 1
      optional :string, :file_name, 2
      optional :bool, :can_handle_http, 3
    end

    class CMsgClientUFSDownloadResponse
      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :app_id, 2
      optional :uint32, :file_size, 3
      optional :uint32, :raw_file_size, 4
      optional :bytes, :sha_file, 5
      optional :uint64, :time_stamp, 6
      optional :bool, :is_explicit_delete, 7
      optional :bool, :use_http, 8
      optional :string, :http_host, 9
      optional :string, :http_url, 10
      optional :bytes, :kv_headers, 11
      optional :bool, :use_https, 12
      optional :bool, :encrypted, 13
    end

    class CMsgClientUFSLoginRequest
      optional :uint32, :protocol_version, 1
      optional :uint64, :am_session_token, 2
      repeated :uint32, :apps, 3
    end

    class CMsgClientUFSLoginResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgClientRequestEncryptedAppTicket
      optional :uint32, :app_id, 1
      optional :bytes, :userdata, 2
    end

    class CMsgClientRequestEncryptedAppTicketResponse
      optional :uint32, :app_id, 1
      optional :int32, :eresult, 2, :default => 2
      optional ::SteamCommunity::Internal::EncryptedAppTicket, :encrypted_app_ticket, 3
    end

    class CMsgClientWalletInfoUpdate
      optional :bool, :has_wallet, 1
      optional :int32, :balance, 2
      optional :int32, :currency, 3
      optional :int32, :balance_delayed, 4
    end

    class CMsgClientAppInfoUpdate
      optional :uint32, :last_changenumber, 1
      optional :bool, :send_changelist, 2
    end

    class CMsgClientAppInfoChanges
      optional :uint32, :current_change_number, 1
      optional :bool, :force_full_update, 2
      repeated :uint32, :appIDs, 3
    end

    class CMsgClientAppInfoRequest
      class App
        optional :uint32, :app_id, 1
        optional :uint32, :section_flags, 2
        repeated :uint32, :section_CRC, 3
      end

      repeated ::SteamCommunity::Internal::CMsgClientAppInfoRequest::App, :apps, 1
      optional :bool, :supports_batches, 2, :default => false
    end

    class CMsgClientAppInfoResponse
      class App
        class Section
          optional :uint32, :section_id, 1
          optional :bytes, :section_kv, 2
        end

        optional :uint32, :app_id, 1
        optional :uint32, :change_number, 2
        repeated ::SteamCommunity::Internal::CMsgClientAppInfoResponse::App::Section, :sections, 3
      end

      repeated ::SteamCommunity::Internal::CMsgClientAppInfoResponse::App, :apps, 1
      repeated :uint32, :apps_unknown, 2
      optional :uint32, :apps_pending, 3
    end

    class CMsgClientPackageInfoRequest
      repeated :uint32, :package_ids, 1
      optional :bool, :meta_data_only, 2
    end

    class CMsgClientPackageInfoResponse
      class Package
        optional :uint32, :package_id, 1
        optional :uint32, :change_number, 2
        optional :bytes, :sha, 3
        optional :bytes, :buffer, 4
      end

      repeated ::SteamCommunity::Internal::CMsgClientPackageInfoResponse::Package, :packages, 1
      repeated :uint32, :packages_unknown, 2
      optional :uint32, :packages_pending, 3
    end

    class CMsgClientPICSChangesSinceRequest
      optional :uint32, :since_change_number, 1
      optional :bool, :send_app_info_changes, 2
      optional :bool, :send_package_info_changes, 3
      optional :uint32, :num_app_info_cached, 4
      optional :uint32, :num_package_info_cached, 5
    end

    class CMsgClientPICSChangesSinceResponse
      class PackageChange
        optional :uint32, :packageid, 1
        optional :uint32, :change_number, 2
        optional :bool, :needs_token, 3
      end

      class AppChange
        optional :uint32, :appid, 1
        optional :uint32, :change_number, 2
        optional :bool, :needs_token, 3
      end

      optional :uint32, :current_change_number, 1
      optional :uint32, :since_change_number, 2
      optional :bool, :force_full_update, 3
      repeated ::SteamCommunity::Internal::CMsgClientPICSChangesSinceResponse::PackageChange, :package_changes, 4
      repeated ::SteamCommunity::Internal::CMsgClientPICSChangesSinceResponse::AppChange, :app_changes, 5
      optional :bool, :force_full_app_update, 6
      optional :bool, :force_full_package_update, 7
    end

    class CMsgClientPICSProductInfoRequest
      class AppInfo
        optional :uint32, :appid, 1
        optional :uint64, :access_token, 2
        optional :bool, :only_public, 3
      end

      class PackageInfo
        optional :uint32, :packageid, 1
        optional :uint64, :access_token, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientPICSProductInfoRequest::PackageInfo, :packages, 1
      repeated ::SteamCommunity::Internal::CMsgClientPICSProductInfoRequest::AppInfo, :apps, 2
      optional :bool, :meta_data_only, 3
      optional :uint32, :num_prev_failed, 4
    end

    class CMsgClientPICSProductInfoResponse
      class AppInfo
        optional :uint32, :appid, 1
        optional :uint32, :change_number, 2
        optional :bool, :missing_token, 3
        optional :bytes, :sha, 4
        optional :bytes, :buffer, 5
        optional :bool, :only_public, 6
        optional :uint32, :size, 7
      end

      class PackageInfo
        optional :uint32, :packageid, 1
        optional :uint32, :change_number, 2
        optional :bool, :missing_token, 3
        optional :bytes, :sha, 4
        optional :bytes, :buffer, 5
        optional :uint32, :size, 6
      end

      repeated ::SteamCommunity::Internal::CMsgClientPICSProductInfoResponse::AppInfo, :apps, 1
      repeated :uint32, :unknown_appids, 2
      repeated ::SteamCommunity::Internal::CMsgClientPICSProductInfoResponse::PackageInfo, :packages, 3
      repeated :uint32, :unknown_packageids, 4
      optional :bool, :meta_data_only, 5
      optional :bool, :response_pending, 6
      optional :uint32, :http_min_size, 7
      optional :string, :http_host, 8
    end

    class CMsgClientPICSAccessTokenRequest
      repeated :uint32, :packageids, 1
      repeated :uint32, :appids, 2
    end

    class CMsgClientPICSAccessTokenResponse
      class PackageToken
        optional :uint32, :packageid, 1
        optional :uint64, :access_token, 2
      end

      class AppToken
        optional :uint32, :appid, 1
        optional :uint64, :access_token, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientPICSAccessTokenResponse::PackageToken, :package_access_tokens, 1
      repeated :uint32, :package_denied_tokens, 2
      repeated ::SteamCommunity::Internal::CMsgClientPICSAccessTokenResponse::AppToken, :app_access_tokens, 3
      repeated :uint32, :app_denied_tokens, 4
    end

    class CMsgClientUFSGetUGCDetails
      optional :fixed64, :hcontent, 1, :default => 18446744073709551615
    end

    class CMsgClientUFSGetUGCDetailsResponse
      optional :int32, :eresult, 1, :default => 2
      optional :string, :url, 2
      optional :uint32, :app_id, 3
      optional :string, :filename, 4
      optional :fixed64, :steamid_creator, 5
      optional :uint32, :file_size, 6
      optional :uint32, :compressed_file_size, 7
      optional :string, :rangecheck_host, 8
      optional :string, :file_encoded_sha1, 9
    end

    class CMsgClientUFSGetSingleFileInfo
      optional :uint32, :app_id, 1
      optional :string, :file_name, 2
    end

    class CMsgClientUFSGetSingleFileInfoResponse
      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :app_id, 2
      optional :string, :file_name, 3
      optional :bytes, :sha_file, 4
      optional :uint64, :time_stamp, 5
      optional :uint32, :raw_file_size, 6
      optional :bool, :is_explicit_delete, 7
    end

    class CMsgClientUFSShareFile
      optional :uint32, :app_id, 1
      optional :string, :file_name, 2
    end

    class CMsgClientUFSShareFileResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :hcontent, 2, :default => 18446744073709551615
    end

    class CMsgClientNewLoginKey
      optional :uint32, :unique_id, 1
      optional :string, :login_key, 2
    end

    class CMsgClientNewLoginKeyAccepted
      optional :uint32, :unique_id, 1
    end

    class CMsgClientAMGetClanOfficers
      optional :fixed64, :steamid_clan, 1
    end

    class CMsgClientAMGetClanOfficersResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :steamid_clan, 2
      optional :int32, :officer_count, 3
    end

    class CMsgClientAMGetPersonaNameHistory
      class IdInstance
        optional :fixed64, :steamid, 1
      end

      optional :int32, :id_count, 1
      repeated ::SteamCommunity::Internal::CMsgClientAMGetPersonaNameHistory::IdInstance, :Ids, 2
    end

    class CMsgClientAMGetPersonaNameHistoryResponse
      class NameTableInstance
        class NameInstance
          optional :fixed32, :name_since, 1
          optional :string, :name, 2
        end

        optional :int32, :eresult, 1, :default => 2
        optional :fixed64, :steamid, 2
        repeated ::SteamCommunity::Internal::CMsgClientAMGetPersonaNameHistoryResponse::NameTableInstance::NameInstance, :names, 3
      end

      repeated ::SteamCommunity::Internal::CMsgClientAMGetPersonaNameHistoryResponse::NameTableInstance, :responses, 2
    end

    class CMsgClientDeregisterWithServer
      optional :uint32, :eservertype, 1
      optional :uint32, :app_id, 2
    end

    class CMsgClientClanState
      class NameInfo
        optional :string, :clan_name, 1
        optional :bytes, :sha_avatar, 2
      end

      class UserCounts
        optional :uint32, :members, 1
        optional :uint32, :online, 2
        optional :uint32, :chatting, 3
        optional :uint32, :in_game, 4
      end

      class Event
        optional :fixed64, :gid, 1
        optional :uint32, :event_time, 2
        optional :string, :headline, 3
        optional :fixed64, :game_id, 4
        optional :bool, :just_posted, 5
      end

      optional :fixed64, :steamid_clan, 1
      optional :uint32, :m_unStatusFlags, 2
      optional :uint32, :clan_account_flags, 3
      optional ::SteamCommunity::Internal::CMsgClientClanState::NameInfo, :name_info, 4
      optional ::SteamCommunity::Internal::CMsgClientClanState::UserCounts, :user_counts, 5
      repeated ::SteamCommunity::Internal::CMsgClientClanState::Event, :events, 6
      repeated ::SteamCommunity::Internal::CMsgClientClanState::Event, :announcements, 7
    end

    class CMsgClientFriendMsg
      optional :fixed64, :steamid, 1
      optional :int32, :chat_entry_type, 2
      optional :bytes, :message, 3
      optional :fixed32, :rtime32_server_timestamp, 4
    end

    class CMsgClientFriendMsgIncoming
      optional :fixed64, :steamid_from, 1
      optional :int32, :chat_entry_type, 2
      optional :bool, :from_limited_account, 3
      optional :bytes, :message, 4
      optional :fixed32, :rtime32_server_timestamp, 5
    end

    class CMsgClientAddFriend
      optional :fixed64, :steamid_to_add, 1
      optional :string, :accountname_or_email_to_add, 2
    end

    class CMsgClientAddFriendResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :steam_id_added, 2
      optional :string, :persona_name_added, 3
    end

    class CMsgClientRemoveFriend
      optional :fixed64, :friendid, 1
    end

    class CMsgClientHideFriend
      optional :fixed64, :friendid, 1
      optional :bool, :hide, 2
    end

  end

end

