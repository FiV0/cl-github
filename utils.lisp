;;;; Some helper functions.
(in-package :cl-github)

(defun url-replace-spaces (string)
  (substitute #\+ #\Space string))

(defun remove-chars (str replacements)
  "Removes REPLACEMENTS (can be 'char or 'string) from STR"
  (reduce #'(lambda (str replacement)
              (cl-strings:replace-all
                str (if (eq (type-of replacement) 'standard-char)
                      (string replacement)
                      replacement) ""))
          replacements
          :initial-value str))

(defun parse-link-header (link-header)
  "Splits a string of the form '<http...>; rel=\"this link refers to \",
  <http..' into a list of pairs of (relationship attribute . link). "
  (let ((links-non-parsed (cl-strings:split
                            (remove-chars link-header
                                          '(#\< #\> #\Space #\" "rel=")) ",")))
    (loop for link-non-parsed in links-non-parsed
          collect (let* ((link-and-rel (cl-strings:split link-non-parsed ";"))
                         (link (car link-and-rel))
                         (rel (cadr link-and-rel)))
                    (cons rel link)))))
