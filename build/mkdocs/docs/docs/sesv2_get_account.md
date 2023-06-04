<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtain information about the email-sending status and capabilities of your Amazon SES account in the current Amazon Web Services Region

### Description

Obtain information about the email-sending status and capabilities of
your Amazon SES account in the current Amazon Web Services Region.

### Usage

    sesv2_get_account()

### Value

A list with the following syntax:

    list(
      DedicatedIpAutoWarmupEnabled = TRUE|FALSE,
      EnforcementStatus = "string",
      ProductionAccessEnabled = TRUE|FALSE,
      SendQuota = list(
        Max24HourSend = 123.0,
        MaxSendRate = 123.0,
        SentLast24Hours = 123.0
      ),
      SendingEnabled = TRUE|FALSE,
      SuppressionAttributes = list(
        SuppressedReasons = list(
          "BOUNCE"|"COMPLAINT"
        )
      ),
      Details = list(
        MailType = "MARKETING"|"TRANSACTIONAL",
        WebsiteURL = "string",
        ContactLanguage = "EN"|"JA",
        UseCaseDescription = "string",
        AdditionalContactEmailAddresses = list(
          "string"
        ),
        ReviewDetails = list(
          Status = "PENDING"|"FAILED"|"GRANTED"|"DENIED",
          CaseId = "string"
        )
      ),
      VdmAttributes = list(
        VdmEnabled = "ENABLED"|"DISABLED",
        DashboardAttributes = list(
          EngagementMetrics = "ENABLED"|"DISABLED"
        ),
        GuardianAttributes = list(
          OptimizedSharedDelivery = "ENABLED"|"DISABLED"
        )
      )
    )

### Request syntax

    svc$get_account()
