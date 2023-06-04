<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_deliverability_dashboard_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account

### Description

Retrieve information about the status of the Deliverability dashboard
for your Amazon Pinpoint account. When the Deliverability dashboard is
enabled, you gain access to reputation, deliverability, and other
metrics for the domains that you use to send email using Amazon
Pinpoint. You also gain the ability to perform predictive inbox
placement tests.

When you use the Deliverability dashboard, you pay a monthly
subscription charge, in addition to any other fees that you accrue by
using Amazon Pinpoint. For more information about the features and cost
of a Deliverability dashboard subscription, see [Amazon Pinpoint
Pricing](https://aws.amazon.com/pinpoint/pricing/).

### Usage

    pinpointemail_get_deliverability_dashboard_options()

### Value

A list with the following syntax:

    list(
      DashboardEnabled = TRUE|FALSE,
      SubscriptionExpiryDate = as.POSIXct(
        "2015-01-01"
      ),
      AccountStatus = "ACTIVE"|"PENDING_EXPIRATION"|"DISABLED",
      ActiveSubscribedDomains = list(
        list(
          Domain = "string",
          SubscriptionStartDate = as.POSIXct(
            "2015-01-01"
          ),
          InboxPlacementTrackingOption = list(
            Global = TRUE|FALSE,
            TrackedIsps = list(
              "string"
            )
          )
        )
      ),
      PendingExpirationSubscribedDomains = list(
        list(
          Domain = "string",
          SubscriptionStartDate = as.POSIXct(
            "2015-01-01"
          ),
          InboxPlacementTrackingOption = list(
            Global = TRUE|FALSE,
            TrackedIsps = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_deliverability_dashboard_options()
