<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_macie_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status and configuration settings for an Amazon Macie account

### Description

Retrieves the status and configuration settings for an Amazon Macie
account.

### Usage

    macie2_get_macie_session()

### Value

A list with the following syntax:

    list(
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      findingPublishingFrequency = "FIFTEEN_MINUTES"|"ONE_HOUR"|"SIX_HOURS",
      serviceRole = "string",
      status = "PAUSED"|"ENABLED",
      updatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_macie_session()
