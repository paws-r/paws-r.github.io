<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_macie_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Suspends or re-enables Amazon Macie, or updates the configuration settings for a Macie account

### Description

Suspends or re-enables Amazon Macie, or updates the configuration
settings for a Macie account.

### Usage

    macie2_update_macie_session(findingPublishingFrequency, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_macie_session_:_findingPublishingFrequency">findingPublishingFrequency</code></td>
<td><p>Specifies how often to publish updates to policy findings for the
account. This includes publishing updates to Security Hub and Amazon
EventBridge (formerly Amazon CloudWatch Events).</p></td>
</tr>
<tr class="even">
<td><code id="macie2_update_macie_session_:_status">status</code></td>
<td><p>Specifies a new status for the account. Valid values are:
ENABLED, resume all Amazon Macie activities for the account; and,
PAUSED, suspend all Macie activities for the account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_macie_session(
      findingPublishingFrequency = "FIFTEEN_MINUTES"|"ONE_HOUR"|"SIX_HOURS",
      status = "PAUSED"|"ENABLED"
    )
