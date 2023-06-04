<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_get_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves setting configurations for Inspector scans

### Description

Retrieves setting configurations for Inspector scans.

### Usage

    inspector2_get_configuration()

### Value

A list with the following syntax:

    list(
      ecrConfiguration = list(
        rescanDurationState = list(
          rescanDuration = "LIFETIME"|"DAYS_30"|"DAYS_180",
          status = "SUCCESS"|"PENDING"|"FAILED",
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$get_configuration()
