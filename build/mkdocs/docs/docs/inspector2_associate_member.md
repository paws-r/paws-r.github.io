<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_associate_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an Amazon Web Services account with an Amazon Inspector delegated administrator

### Description

Associates an Amazon Web Services account with an Amazon Inspector
delegated administrator. An HTTP 200 response indicates the association
was successfully started, but doesn’t indicate whether it was completed.
You can check if the association completed by using `list_members` for
multiple accounts or
[GetMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html)
for a single account.

### Usage

    inspector2_associate_member(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_associate_member_:_accountId">accountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the member
account to be associated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accountId = "string"
    )

### Request syntax

    svc$associate_member(
      accountId = "string"
    )
