<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_legal_hold</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action returns details for a specified legal hold

### Description

This action returns details for a specified legal hold. The details are
the body of a legal hold in JSON format, in addition to metadata.

### Usage

    backup_get_legal_hold(LegalHoldId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_legal_hold_:_LegalHoldId">LegalHoldId</code></td>
<td><p>[required] This is the ID required to use
<code>get_legal_hold</code>. This unique ID is associated with a
specific legal hold.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Title = "string",
      Status = "CREATING"|"ACTIVE"|"CANCELING"|"CANCELED",
      Description = "string",
      CancelDescription = "string",
      LegalHoldId = "string",
      LegalHoldArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      CancellationDate = as.POSIXct(
        "2015-01-01"
      ),
      RetainRecordUntil = as.POSIXct(
        "2015-01-01"
      ),
      RecoveryPointSelection = list(
        VaultNames = list(
          "string"
        ),
        ResourceIdentifiers = list(
          "string"
        ),
        DateRange = list(
          FromDate = as.POSIXct(
            "2015-01-01"
          ),
          ToDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$get_legal_hold(
      LegalHoldId = "string"
    )
