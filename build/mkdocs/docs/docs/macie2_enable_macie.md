<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_enable_macie</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables Amazon Macie and specifies the configuration settings for a Macie account

### Description

Enables Amazon Macie and specifies the configuration settings for a
Macie account.

### Usage

    macie2_enable_macie(clientToken, findingPublishingFrequency, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_enable_macie_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_enable_macie_:_findingPublishingFrequency">findingPublishingFrequency</code></td>
<td><p>Specifies how often to publish updates to policy findings for the
account. This includes publishing updates to Security Hub and Amazon
EventBridge (formerly Amazon CloudWatch Events).</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_enable_macie_:_status">status</code></td>
<td><p>Specifies the new status for the account. To enable Amazon Macie
and start all Macie activities for the account, set this value to
ENABLED.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_macie(
      clientToken = "string",
      findingPublishingFrequency = "FIFTEEN_MINUTES"|"ONE_HOUR"|"SIX_HOURS",
      status = "PAUSED"|"ENABLED"
    )
