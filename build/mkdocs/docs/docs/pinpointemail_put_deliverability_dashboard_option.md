<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_put_deliverability_dashboard_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enable or disable the Deliverability dashboard for your Amazon Pinpoint account

### Description

Enable or disable the Deliverability dashboard for your Amazon Pinpoint
account. When you enable the Deliverability dashboard, you gain access
to reputation, deliverability, and other metrics for the domains that
you use to send email using Amazon Pinpoint. You also gain the ability
to perform predictive inbox placement tests.

When you use the Deliverability dashboard, you pay a monthly
subscription charge, in addition to any other fees that you accrue by
using Amazon Pinpoint. For more information about the features and cost
of a Deliverability dashboard subscription, see [Amazon Pinpoint
Pricing](https://aws.amazon.com/pinpoint/pricing/).

### Usage

    pinpointemail_put_deliverability_dashboard_option(DashboardEnabled,
      SubscribedDomains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_put_deliverability_dashboard_option_:_DashboardEnabled">DashboardEnabled</code></td>
<td><p>[required] Specifies whether to enable the Deliverability
dashboard for your Amazon Pinpoint account. To enable the dashboard, set
this value to <code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_put_deliverability_dashboard_option_:_SubscribedDomains">SubscribedDomains</code></td>
<td><p>An array of objects, one for each verified domain that you use to
send email and enabled the Deliverability dashboard for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_deliverability_dashboard_option(
      DashboardEnabled = TRUE|FALSE,
      SubscribedDomains = list(
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
