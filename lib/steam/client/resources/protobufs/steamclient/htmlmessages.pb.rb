# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class CMsgKeyUp < ::Protobuf::Message; end
    class CMsgKeyDown < ::Protobuf::Message; end
    class CMsgKeyChar < ::Protobuf::Message; end
    class CMsgMouseDown < ::Protobuf::Message; end
    class CMsgMouseUp < ::Protobuf::Message; end
    class CMsgMouseDblClick < ::Protobuf::Message; end
    class CMsgMouseWheel < ::Protobuf::Message; end
    class CMsgMouseMove < ::Protobuf::Message; end
    class CMsgMouseLeave < ::Protobuf::Message; end
    class CMsgBrowserCreate < ::Protobuf::Message; end
    class CMsgBrowserCreateResponse < ::Protobuf::Message; end
    class CMsgBrowserRemove < ::Protobuf::Message; end
    class CMsgSetLocalFileRequestMapping < ::Protobuf::Message
      class AdditionalRoute < ::Protobuf::Message; end

    end

    class CMsgBrowserErrorStrings < ::Protobuf::Message; end
    class CMsgBrowserSize < ::Protobuf::Message; end
    class CMsgPostURL < ::Protobuf::Message; end
    class CMsgAddHeader < ::Protobuf::Message; end
    class CMsgStopLoad < ::Protobuf::Message; end
    class CMsgReload < ::Protobuf::Message; end
    class CMsgGoForward < ::Protobuf::Message; end
    class CMsgGoBack < ::Protobuf::Message; end
    class CMsgClearHistory < ::Protobuf::Message; end
    class CMsgCopy < ::Protobuf::Message; end
    class CMsgPaste < ::Protobuf::Message; end
    class CMsgExecuteJavaScript < ::Protobuf::Message; end
    class CMsgSetFocus < ::Protobuf::Message; end
    class CMsgHorizontalScrollBarSize < ::Protobuf::Message; end
    class CMsgHorizontalScrollBarSizeResponse < ::Protobuf::Message; end
    class CMsgVerticalScrollBarSize < ::Protobuf::Message; end
    class CMsgVerticalScrollBarSizeResponse < ::Protobuf::Message; end
    class CMsgFind < ::Protobuf::Message; end
    class CMsgStopFind < ::Protobuf::Message; end
    class CMsgSetHorizontalScroll < ::Protobuf::Message; end
    class CMsgSetVerticalScroll < ::Protobuf::Message; end
    class CMsgSetZoomLevel < ::Protobuf::Message; end
    class CMsgViewSource < ::Protobuf::Message; end
    class CMsgBrowserReady < ::Protobuf::Message; end
    class CMsgURLChanged < ::Protobuf::Message; end
    class CHTMLHeader < ::Protobuf::Message; end
    class CHTMLPageSecurityInfo < ::Protobuf::Message; end
    class CMsgFinishedRequest < ::Protobuf::Message; end
    class CMsgLoadedRequest < ::Protobuf::Message; end
    class CMsgPageSecurity < ::Protobuf::Message; end
    class CMsgStartRequest < ::Protobuf::Message; end
    class CMsgStartRequestResponse < ::Protobuf::Message; end
    class CMsgShowPopup < ::Protobuf::Message; end
    class CMsgHidePopup < ::Protobuf::Message; end
    class CMsgSizePopup < ::Protobuf::Message; end
    class CMsgOpenNewTab < ::Protobuf::Message; end
    class CMsgPopupHTMLWindow < ::Protobuf::Message; end
    class CMsgPopupHTMLWindowResponse < ::Protobuf::Message; end
    class CMsgSetHTMLTitle < ::Protobuf::Message; end
    class CMsgLoadingResource < ::Protobuf::Message; end
    class CMsgStatusText < ::Protobuf::Message; end
    class CMsgSetCursor < ::Protobuf::Message; end
    class CMsgFileLoadDialog < ::Protobuf::Message; end
    class CMsgFileLoadDialogResponse < ::Protobuf::Message; end
    class CMsgShowToolTip < ::Protobuf::Message; end
    class CMsgUpdateToolTip < ::Protobuf::Message; end
    class CMsgHideToolTip < ::Protobuf::Message; end
    class CMsgSearchResults < ::Protobuf::Message; end
    class CMsgClose < ::Protobuf::Message; end
    class CMsgSetSharedPaintBuffers < ::Protobuf::Message; end
    class CMsgNeedsPaint < ::Protobuf::Message; end
    class CMsgComboNeedsPaint < ::Protobuf::Message; end
    class CMsgGetZoom < ::Protobuf::Message; end
    class CMsgGetZoomResponse < ::Protobuf::Message; end
    class CMsgLinkAtPosition < ::Protobuf::Message; end
    class CMsgLinkAtPositionResponse < ::Protobuf::Message; end
    class CMsgZoomToElementAtPosition < ::Protobuf::Message; end
    class CMsgZoomToElementAtPositionResponse < ::Protobuf::Message; end
    class CMsgScalePageToValue < ::Protobuf::Message; end
    class CMsgScalePageToValueResponse < ::Protobuf::Message; end
    class CMsgSavePageToJPEG < ::Protobuf::Message; end
    class CMsgSavePageToJPEGResponse < ::Protobuf::Message; end
    class CMsgJSAlert < ::Protobuf::Message; end
    class CMsgJSConfirm < ::Protobuf::Message; end
    class CMsgJSDialogResponse < ::Protobuf::Message; end
    class CMsgCanGoBackAndForward < ::Protobuf::Message; end
    class CMsgOpenSteamURL < ::Protobuf::Message; end
    class CMsgSetCookie < ::Protobuf::Message; end
    class CMsgSetTargetFrameRate < ::Protobuf::Message; end
    class CMsgPauseRepaint < ::Protobuf::Message; end
    class CMsgFullRepaint < ::Protobuf::Message; end
    class CMsgRequestFullScreen < ::Protobuf::Message; end
    class CMsgRequestFullScreenResponse < ::Protobuf::Message; end
    class CMsgExitFullScreen < ::Protobuf::Message; end
    class CMsgGetCookiesForURL < ::Protobuf::Message; end
    class CCookie < ::Protobuf::Message; end
    class CMsgGetCookiesForURLResponse < ::Protobuf::Message; end
    class CMsgNodeHasFocus < ::Protobuf::Message; end
    class CMsgZoomToFocusedElement < ::Protobuf::Message; end
    class CMsgCloseFullScreenFlashIfOpen < ::Protobuf::Message; end
    class CMsgPauseFullScreenFlashMovieIfOpen < ::Protobuf::Message; end
    class CMsgFocusedNodeText < ::Protobuf::Message; end
    class CMsgFocusedNodeTextResponse < ::Protobuf::Message; end
    class CMsgBuildID < ::Protobuf::Message; end
    class CMsgOpenDevTools < ::Protobuf::Message; end
    class CMsgCloseDevTools < ::Protobuf::Message; end
    class CMsgUnlockH264 < ::Protobuf::Message; end
    class CMsgScreenInformationChanged < ::Protobuf::Message; end
    class CMsgClearAllCookies < ::Protobuf::Message; end
    class CMsgScreenDPI < ::Protobuf::Message; end
    class CMsgJSRegisterMethod < ::Protobuf::Message; end
    class CJSMethodArgument < ::Protobuf::Message; end
    class CMsgJSValue < ::Protobuf::Message
      class JSObjectProperty < ::Protobuf::Message; end

    end

    class CMsgJSMethodCall < ::Protobuf::Message; end
    class CMsgJSExecuteCallback < ::Protobuf::Message; end
    class CMsgJSReleaseCallback < ::Protobuf::Message; end
    class CMsgJSRaiseException < ::Protobuf::Message; end
    class CMsgLoadLocalization < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgKeyUp
      optional :uint32, :browser_handle, 1
      optional :uint32, :keyCode, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgKeyDown
      optional :uint32, :browser_handle, 1
      optional :uint32, :keyCode, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgKeyChar
      optional :uint32, :browser_handle, 1
      optional :uint32, :unichar, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgMouseDown
      optional :uint32, :browser_handle, 1
      optional :uint32, :mouse_button, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgMouseUp
      optional :uint32, :browser_handle, 1
      optional :uint32, :mouse_button, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgMouseDblClick
      optional :uint32, :browser_handle, 1
      optional :uint32, :mouse_button, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgMouseWheel
      optional :uint32, :browser_handle, 1
      optional :int32, :delta, 2
      optional :uint32, :modifiers, 3
    end

    class CMsgMouseMove
      optional :uint32, :browser_handle, 1
      optional :int32, :x, 2
      optional :int32, :y, 3
      optional :uint32, :modifiers, 4
    end

    class CMsgMouseLeave
      optional :uint32, :browser_handle, 1
    end

    class CMsgBrowserCreate
      optional :uint32, :request_id, 1
      optional :string, :useragent, 3
      optional :string, :user_css, 5
      optional :bool, :native_dropdowns, 6
      optional :float, :dpi_scaling, 7
    end

    class CMsgBrowserCreateResponse
      optional :uint32, :browser_handle, 1
      optional :uint32, :request_id, 2
    end

    class CMsgBrowserRemove
      optional :uint32, :browser_handle, 1
    end

    class CMsgSetLocalFileRequestMapping
      class AdditionalRoute
        optional :string, :relative_url, 1
        optional :string, :local_path, 2
        optional :string, :allowed_extensions, 3
      end

      optional :uint32, :browser_handle, 1
      optional :string, :request_url, 2
      optional :string, :default_local_path, 3
      repeated ::SteamCommunity::Internal::CMsgSetLocalFileRequestMapping::AdditionalRoute, :routes, 4
    end

    class CMsgBrowserErrorStrings
      optional :uint32, :browser_handle, 1
      optional :string, :title, 2
      optional :string, :header, 3
      optional :string, :cache_miss, 4
      optional :string, :bad_url, 5
      optional :string, :connection_problem, 6
      optional :string, :proxy_problem, 7
      optional :string, :unknown, 8
    end

    class CMsgBrowserSize
      optional :uint32, :browser_handle, 1
      optional :uint32, :width, 2
      optional :uint32, :height, 3
    end

    class CMsgPostURL
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :post, 3
      optional :uint32, :pageserial, 4
    end

    class CMsgAddHeader
      optional :uint32, :browser_handle, 1
      optional :string, :key, 2
      optional :string, :value, 3
    end

    class CMsgStopLoad
      optional :uint32, :browser_handle, 1
    end

    class CMsgReload
      optional :uint32, :browser_handle, 1
    end

    class CMsgGoForward
      optional :uint32, :browser_handle, 1
    end

    class CMsgGoBack
      optional :uint32, :browser_handle, 1
    end

    class CMsgClearHistory
      optional :uint32, :browser_handle, 1
    end

    class CMsgCopy
      optional :uint32, :browser_handle, 1
    end

    class CMsgPaste
      optional :uint32, :browser_handle, 1
    end

    class CMsgExecuteJavaScript
      optional :uint32, :browser_handle, 1
      optional :string, :script, 2
    end

    class CMsgSetFocus
      optional :uint32, :browser_handle, 1
      optional :bool, :focus, 2
    end

    class CMsgHorizontalScrollBarSize
      optional :uint32, :browser_handle, 1
    end

    class CMsgHorizontalScrollBarSizeResponse
      optional :uint32, :browser_handle, 1
      optional :uint32, :scroll_max, 6
      optional :uint32, :scroll, 7
      optional :float, :zoom, 8
      optional :bool, :visible, 9
      optional :uint32, :page_size, 10
    end

    class CMsgVerticalScrollBarSize
      optional :uint32, :browser_handle, 1
    end

    class CMsgVerticalScrollBarSizeResponse
      optional :uint32, :browser_handle, 1
      optional :uint32, :scroll_max, 6
      optional :uint32, :scroll, 7
      optional :float, :zoom, 8
      optional :bool, :visible, 9
      optional :uint32, :page_size, 10
    end

    class CMsgFind
      optional :uint32, :browser_handle, 1
      optional :string, :find, 2
      optional :bool, :infind, 3
      optional :bool, :reverse, 4, :default => false
    end

    class CMsgStopFind
      optional :uint32, :browser_handle, 1
    end

    class CMsgSetHorizontalScroll
      optional :uint32, :browser_handle, 1
      optional :uint32, :scroll, 2
    end

    class CMsgSetVerticalScroll
      optional :uint32, :browser_handle, 1
      optional :uint32, :scroll, 2
    end

    class CMsgSetZoomLevel
      optional :uint32, :browser_handle, 1
      optional :uint32, :zoom, 2
    end

    class CMsgViewSource
      optional :uint32, :browser_handle, 1
    end

    class CMsgBrowserReady
      optional :uint32, :browser_handle, 1
    end

    class CMsgURLChanged
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :postData, 3
      optional :bool, :bIsRedirect, 4
      optional :string, :pagetitle, 5
      optional :bool, :bNewNavigation, 6
    end

    class CHTMLHeader
      optional :string, :key, 1
      optional :string, :value, 2
    end

    class CHTMLPageSecurityInfo
      optional :bool, :bIsSecure, 1, :default => false
      optional :bool, :bHasCertError, 2, :default => false
      optional :string, :issuerName, 3
      optional :string, :certName, 4
      optional :int32, :certExpiry, 5, :default => 0
      optional :int32, :nCertBits, 6, :default => 0
      optional :bool, :bIsEVCert, 7, :default => false
    end

    class CMsgFinishedRequest
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :pageTitle, 3
    end

    class CMsgLoadedRequest
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :pageTitle, 3
      repeated ::SteamCommunity::Internal::CHTMLHeader, :headers, 5
    end

    class CMsgPageSecurity
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional ::SteamCommunity::Internal::CHTMLPageSecurityInfo, :security_info, 3
    end

    class CMsgStartRequest
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :target, 3
      optional :string, :postData, 4
      optional :bool, :bIsRedirect, 5
    end

    class CMsgStartRequestResponse
      optional :uint32, :browser_handle, 1
      optional :bool, :bAllow, 2
    end

    class CMsgShowPopup
      optional :uint32, :browser_handle, 1
    end

    class CMsgHidePopup
      optional :uint32, :browser_handle, 1
    end

    class CMsgSizePopup
      optional :uint32, :browser_handle, 1
      optional :uint32, :x, 2
      optional :uint32, :y, 3
      optional :uint32, :wide, 4
      optional :uint32, :tall, 5
    end

    class CMsgOpenNewTab
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :bool, :bForeground, 3
    end

    class CMsgPopupHTMLWindow
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :uint32, :x, 3
      optional :uint32, :y, 4
      optional :uint32, :wide, 5
      optional :uint32, :tall, 6
      optional :uint32, :popup_index, 7
    end

    class CMsgPopupHTMLWindowResponse
      optional :uint32, :browser_handle, 1
      optional :bool, :bAllow, 2
    end

    class CMsgSetHTMLTitle
      optional :uint32, :browser_handle, 1
      optional :string, :title, 2
    end

    class CMsgLoadingResource
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
    end

    class CMsgStatusText
      optional :uint32, :browser_handle, 1
      optional :string, :text, 2
    end

    class CMsgSetCursor
      optional :uint32, :browser_handle, 1
      optional :uint32, :cursor, 2
      optional :bytes, :custom_data, 3
      optional :uint32, :wide, 4
      optional :uint32, :tall, 5
      optional :uint32, :xhotspot, 6
      optional :uint32, :yhotspot, 7
    end

    class CMsgFileLoadDialog
      optional :uint32, :browser_handle, 1
      optional :string, :title, 2
      optional :string, :initialFile, 3
    end

    class CMsgFileLoadDialogResponse
      optional :uint32, :browser_handle, 1
      repeated :string, :files, 2
    end

    class CMsgShowToolTip
      optional :uint32, :browser_handle, 1
      optional :string, :text, 2
    end

    class CMsgUpdateToolTip
      optional :uint32, :browser_handle, 1
      optional :string, :text, 2
    end

    class CMsgHideToolTip
      optional :uint32, :browser_handle, 1
    end

    class CMsgSearchResults
      optional :uint32, :browser_handle, 1
      optional :int32, :activeMatch, 2
      optional :int32, :results, 3
    end

    class CMsgClose
      optional :uint32, :browser_handle, 1
    end

    class CMsgSetSharedPaintBuffers
      optional :uint32, :browser_handle, 1
      optional :uint32, :wide, 2
      optional :uint32, :tall, 3
      optional :uint64, :source_pid, 4
      optional :uint64, :source_handle, 5
      optional :uint64, :handle, 6
    end

    class CMsgNeedsPaint
      optional :uint32, :browser_handle, 1
      optional :uint32, :scrollx, 10
      optional :uint32, :scrolly, 11
      optional :float, :pagescale, 12
      optional :uint32, :pageserial, 15
    end

    class CMsgComboNeedsPaint
      optional :uint32, :browser_handle, 1
      optional :uint64, :rgba, 2
      optional :uint32, :combobox_wide, 3, :default => 0
      optional :uint32, :combobox_tall, 4, :default => 0
      optional :uint64, :shared_memory_handle, 5, :default => 0
      optional :uint64, :shared_memory_size, 7, :default => 0
    end

    class CMsgGetZoom
      optional :uint32, :browser_handle, 1
    end

    class CMsgGetZoomResponse
      optional :uint32, :browser_handle, 1
      optional :float, :zoom, 2
    end

    class CMsgLinkAtPosition
      optional :uint32, :browser_handle, 1
      optional :uint32, :x, 2
      optional :uint32, :y, 3
    end

    class CMsgLinkAtPositionResponse
      optional :uint32, :browser_handle, 1
      optional :uint32, :x, 2
      optional :uint32, :y, 3
      optional :string, :url, 4
      optional :bool, :blivelink, 5
      optional :bool, :binput, 6
    end

    class CMsgZoomToElementAtPosition
      optional :uint32, :browser_handle, 1
      optional :uint32, :x, 2
      optional :uint32, :y, 3
    end

    class CMsgZoomToElementAtPositionResponse
      optional :uint32, :browser_handle, 1
      optional :float, :scale, 2
      optional :float, :duration, 3
    end

    class CMsgScalePageToValue
      optional :uint32, :browser_handle, 1
      optional :float, :scale, 2
      optional :float, :x, 3
      optional :float, :y, 4
    end

    class CMsgScalePageToValueResponse
      optional :uint32, :browser_handle, 1
      optional :float, :zoom, 2
    end

    class CMsgSavePageToJPEG
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :filename, 3
      optional :uint32, :width, 4
      optional :uint32, :height, 5
    end

    class CMsgSavePageToJPEGResponse
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      optional :string, :filename, 3
    end

    class CMsgJSAlert
      optional :uint32, :browser_handle, 1
      optional :string, :message, 2
    end

    class CMsgJSConfirm
      optional :uint32, :browser_handle, 1
      optional :string, :message, 2
    end

    class CMsgJSDialogResponse
      optional :uint32, :browser_handle, 1
      optional :bool, :result, 2
    end

    class CMsgCanGoBackAndForward
      optional :uint32, :browser_handle, 1
      optional :bool, :bgoback, 2
      optional :bool, :bgoforward, 3
    end

    class CMsgOpenSteamURL
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
    end

    class CMsgSetCookie
      optional :string, :key, 1
      optional :string, :value, 2
      optional :string, :path, 3
      optional :string, :host, 4
      optional :uint32, :expires, 5
      optional :bool, :secure, 6
      optional :bool, :httponly, 7
    end

    class CMsgSetTargetFrameRate
      optional :uint32, :browser_handle, 1
      optional :uint32, :nTargetFrameRate, 2
    end

    class CMsgPauseRepaint
      optional :uint32, :browser_handle, 1
    end

    class CMsgFullRepaint
      optional :uint32, :browser_handle, 1
    end

    class CMsgRequestFullScreen
      optional :uint32, :browser_handle, 1
    end

    class CMsgRequestFullScreenResponse
      optional :uint32, :browser_handle, 1
      optional :bool, :ballow, 2
    end

    class CMsgExitFullScreen
      optional :uint32, :browser_handle, 1
    end

    class CMsgGetCookiesForURL
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
    end

    class CCookie
      optional :string, :name, 1
      optional :string, :value, 2
      optional :string, :domain, 3
      optional :string, :path, 4
    end

    class CMsgGetCookiesForURLResponse
      optional :uint32, :browser_handle, 1
      optional :string, :url, 2
      repeated ::SteamCommunity::Internal::CCookie, :cookies, 3
    end

    class CMsgNodeHasFocus
      optional :uint32, :browser_handle, 1
      optional :bool, :bInput, 2
      optional :string, :name, 3
      optional :string, :elementtagname, 4
      optional :string, :searchbuttontext, 5
      optional :bool, :bHasMultipleInputs, 6
      optional :string, :input_type, 7
    end

    class CMsgZoomToFocusedElement
      optional :uint32, :browser_handle, 1
    end

    class CMsgCloseFullScreenFlashIfOpen
      optional :uint32, :browser_handle, 1
    end

    class CMsgPauseFullScreenFlashMovieIfOpen
      optional :uint32, :browser_handle, 1
    end

    class CMsgFocusedNodeText
      optional :uint32, :browser_handle, 1
    end

    class CMsgFocusedNodeTextResponse
      optional :uint32, :browser_handle, 1
      optional :string, :value, 2
    end

    class CMsgBuildID
      optional :uint64, :build_id, 1
    end

    class CMsgOpenDevTools
      optional :uint32, :browser_handle, 1
    end

    class CMsgCloseDevTools
      optional :uint32, :browser_handle, 1
    end

    class CMsgUnlockH264
      optional :uint32, :browser_handle, 1
      optional :string, :unlock_code, 2
    end

    class CMsgScreenInformationChanged
      optional :uint32, :browser_handle, 1
      optional :uint32, :override_width, 2
      optional :uint32, :override_height, 3
    end

    class CMsgClearAllCookies
      optional :uint32, :browser_handle, 1
    end

    class CMsgScreenDPI
      optional :uint32, :browser_handle, 1
      optional :float, :dpi_scaling, 2
    end

    class CMsgJSRegisterMethod
      optional :uint32, :browser_handle, 1
      optional :string, :name, 2
    end

    class CJSMethodArgument
      optional :string, :json_data, 1
      optional :uint32, :function_handle, 2
    end

    class CMsgJSValue
      class JSObjectProperty
        optional :string, :name, 1
        optional ::SteamCommunity::Internal::CMsgJSValue, :value, 2
      end

      optional :bool, :bool_value, 1
      optional :int32, :int_value, 2
      optional :uint32, :uint_value, 3
      optional :float, :float_value, 4
      optional :string, :string_value, 5
      optional :uint32, :function_handle, 6
      optional :bool, :is_array, 8
      repeated ::SteamCommunity::Internal::CMsgJSValue, :array_values, 9
      optional :bool, :is_object, 10
      repeated ::SteamCommunity::Internal::CMsgJSValue::JSObjectProperty, :object_properties, 11
    end

    class CMsgJSMethodCall
      optional :uint32, :browser_handle, 1
      optional :string, :name, 2
      repeated ::SteamCommunity::Internal::CMsgJSValue, :arguments, 3
    end

    class CMsgJSExecuteCallback
      optional :uint32, :browser_handle, 1
      optional :uint32, :function_handle, 2
      repeated ::SteamCommunity::Internal::CMsgJSValue, :arguments, 3
    end

    class CMsgJSReleaseCallback
      optional :uint32, :browser_handle, 1
      optional :uint32, :function_handle, 2
    end

    class CMsgJSRaiseException
      optional :uint32, :browser_handle, 1
      optional :string, :exception, 2
    end

    class CMsgLoadLocalization
      optional :uint32, :browser_handle, 1
      optional :string, :localization_path, 2
      optional :string, :language, 3
    end

  end

end

