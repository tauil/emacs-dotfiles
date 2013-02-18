;; Jabber / gTalk Setup

(setq jabber-account-list
     '(("rafatauil@gmail.com"
     (:network-server . "talk.google.com")
     (:connection-type . ssl)
     (:port . 443))
       ("rafael@xlsol.com"
     (:network-server . "talk.google.com")
     (:connection-type . ssl)
     (:port . 443))))

(custom-set-variables
 '(jabber-avatar-verbose nil)
 '(jabber-vcard-avatars-retrieve nil)
 '(jabber-chat-buffer-format "*-jabber-%n-*")
 '(jabber-history-enabled t)
 '(jabber-mode-line-mode t)
 '(jabber-roster-buffer "*-jabber-*")
 '(jabber-roster-line-format "%S %c %-25n %u %-8s (%r)")
 '(jabber-show-offline-contacts nil))

(setq jabber-chat-buffer-show-avatar nil)
(setq jabber-alert-presence-message-function nil)
