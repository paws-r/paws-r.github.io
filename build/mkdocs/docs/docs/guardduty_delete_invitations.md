<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs

### Description

Deletes invitations sent to the current member account by Amazon Web
Services accounts specified by their account IDs.

### Usage

    guardduty_delete_invitations(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_invitations_:_AccountIds">AccountIds</code></td>
<td><p>[required] A list of account IDs of the Amazon Web Services
accounts that sent invitations to the current member account that you
want to delete invitations from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Result = "string"
        )
      )
    )

### Request syntax

    svc$delete_invitations(
      AccountIds = list(
        "string"
      )
    )
