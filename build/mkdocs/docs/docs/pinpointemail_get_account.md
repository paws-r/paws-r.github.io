<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region

### Description

Obtain information about the email-sending status and capabilities of
your Amazon Pinpoint account in the current AWS Region.

### Usage

    pinpointemail_get_account()

### Value

A list with the following syntax:

    list(
      SendQuota = list(
        Max24HourSend = 123.0,
        MaxSendRate = 123.0,
        SentLast24Hours = 123.0
      ),
      SendingEnabled = TRUE|FALSE,
      DedicatedIpAutoWarmupEnabled = TRUE|FALSE,
      EnforcementStatus = "string",
      ProductionAccessEnabled = TRUE|FALSE
    )

### Request syntax

    svc$get_account()
