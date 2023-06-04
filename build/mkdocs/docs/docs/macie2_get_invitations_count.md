<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_invitations_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the count of Amazon Macie membership invitations that were received by an account

### Description

Retrieves the count of Amazon Macie membership invitations that were
received by an account.

### Usage

    macie2_get_invitations_count()

### Value

A list with the following syntax:

    list(
      invitationsCount = 123
    )

### Request syntax

    svc$get_invitations_count()
