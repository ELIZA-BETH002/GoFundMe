;; Donations Smart Contract

;; Define a map to store donor information
(define-map donors principal uint)

;; Define a variable to store the total donations
(define-data-var total-donations uint u0)

;; Function to make a donation
(define-public (donate (amount uint))
  (let ((sender tx-sender))
    (begin
      ;; Update the donor's total donation amount
      (map-set donors sender (+ (default-to u0 (map-get? donors sender)) amount))
      ;; Update the total donations
      (var-set total-donations (+ (var-get total-donations) amount))
      ;; Transfer the donation amount from the sender to the contract
      (stx-transfer? amount sender (as-contract tx-sender))
    )
  )
)

;; Read-only function to get the total donations
(define-read-only (get-total-donations)
  (var-get total-donations)
)

;; Read-only function to get a specific donor's total donations
(define-read-only (get-donor-donations (donor principal))
  (default-to u0 (map-get? donors donor))
)

;; Function to withdraw funds (only contract owner can call this)
(define-public (withdraw (amount uint))
  (let ((contract-address (as-contract tx-sender)))
    (if (is-eq tx-sender contract-address)
      (stx-transfer? amount contract-address tx-sender)
      (err u403) ;; Forbidden if not the contract owner
    )
  )
)