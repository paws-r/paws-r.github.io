<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_create_legal_hold</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action creates a legal hold on a recovery point (backup)

### Description

This action creates a legal hold on a recovery point (backup). A legal
hold is a restraint on altering or deleting a backup until an authorized
user cancels the legal hold. Any actions to delete or disassociate a
recovery point will fail with an error if one or more active legal holds
are on the recovery point.

### Usage

    backup_create_legal_hold(Title, Description, IdempotencyToken,
      RecoveryPointSelection, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_create_legal_hold_:_Title">Title</code></td>
<td><p>[required] This is the string title of the legal hold.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_legal_hold_:_Description">Description</code></td>
<td><p>[required] This is the string description of the legal
hold.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_create_legal_hold_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>This is a user-chosen string used to distinguish between
otherwise identical calls. Retrying a successful request with the same
idempotency token results in a success message with no action
taken.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_legal_hold_:_RecoveryPointSelection">RecoveryPointSelection</code></td>
<td><p>This specifies criteria to assign a set of resources, such as
resource types or backup vaults.</p></td>
</tr>
<tr class="odd">
<td><code id="backup_create_legal_hold_:_Tags">Tags</code></td>
<td><p>Optional tags to include. A tag is a key-value pair you can use
to manage, filter, and search for your resources. Allowed characters
include UTF-8 letters, numbers, spaces, and the following characters: +
- = . _ : /.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Title = "string",
      Status = "CREATING"|"ACTIVE"|"CANCELING"|"CANCELED",
      Description = "string",
      LegalHoldId = "string",
      LegalHoldArn = "string",
      CreationDate = as.POSIXct(
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

    svc$create_legal_hold(
      Title = "string",
      Description = "string",
      IdempotencyToken = "string",
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
      ),
      Tags = list(
        "string"
      )
    )
