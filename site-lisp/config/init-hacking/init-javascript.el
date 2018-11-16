(setq js-indent-level 2)

;; require javascript-typescript-langserver: sudo npm i -g javascript-typescript-langserver
(require 'lsp-javascript-typescript)
(add-hook 'js-mode-hook 'lsp-javascript-typescript-enable)
(add-hook 'typescript-mode-hook 'lsp-javascript-typescript-enable)

;; require flow-language-server: sudo npm i -g flow-language-server
(require 'lsp-javascript-flow)
(add-hook 'js-mode-hook 'lsp-javascript-flow-enable)
(setq lsp-javascript-flow-server-args '("--try-flow-bin"))

(provide 'init-javascript)
