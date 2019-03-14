(in-package :cl-github-system)

(defpackage #:cl-github
  (:use :cl :json :iterate)
  (:nicknames :nisp.github :github)
  (:export

   :*default-login*
   :*default-token*
   ;; Helper/utils
   #:github-repository-notation
   #:parse-github-repository-notation

   ;; Following people related.
   #:show-followers
   #:show-following
   #:follow ; not working
   #:unfollow ; nor working

   ;; Project collaborators
   #:show-collaborators
   #:add-collaborator
   #:remove-collaborator

   ;; User Emails
   #:user-emails
   #:add-user-email
   #:remove-user-email

   ;; repository search
   #:search-repositories
   #:show-user-repositories

   ;; TODO below nothing yet moved to v3
   ;; User keys
   #:user-keys
   #:add-user-key
   #:remove-user-key

   ;; Repository keys
   #:deploy-keys
   #:add-deploy-key
   #:remove-deploy-key


   ;; Show commit info
   #:show-commit

   #:show-languages
   #:show-tags
   #:show-branches

   ;; Github issues tracker.
   #:search-issues
   #:show-issues
   #:show-issue
   #:open-issue
   #:close-issue
   #:reopen-issue
   #:add-label
   #:remove-label
   #:show-labels
   #:add-comment

   ;; repositories
   #:repository-name
   #:repository-owner
   #:repository-description
   #:repository-url
   #:repository-open-issues-count
   #:repository-fork-p
   #:repository-forks-count
   #:repository-private-p
   #:repository-watchers-count

   #:follow-user))

(in-package :cl-github)
