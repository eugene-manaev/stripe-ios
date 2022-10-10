//
//  STPPaymentMethodParams+PaymentSheet.swift
//  StripePaymentSheet
//
//  Created by David Estes on 6/30/22.
//

import Foundation
@_spi(STP) import StripePaymentsUI

extension STPPaymentMethodParams {
    var nonnil_billingDetails: STPPaymentMethodBillingDetails {
        guard let billingDetails = billingDetails else {
            let billingDetails = STPPaymentMethodBillingDetails()
            self.billingDetails = billingDetails
            return billingDetails
        }
        return billingDetails
    }

    var nonnil_auBECSDebit: STPPaymentMethodAUBECSDebitParams {
        guard let auBECSDebit = auBECSDebit else {
            let auBECSDebit = STPPaymentMethodAUBECSDebitParams()
            self.auBECSDebit = auBECSDebit
            return auBECSDebit
        }
        return auBECSDebit
    }
}
