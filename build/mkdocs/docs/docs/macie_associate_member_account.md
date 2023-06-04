<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_associate_member_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Associates a specified Amazon Web Services account with Amazon Macie Classic as a member account

### Description

(Discontinued) Associates a specified Amazon Web Services account with
Amazon Macie Classic as a member account.

### Usage

    macie_associate_member_account(memberAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_associate_member_account_:_memberAccountId">memberAccountId</code></td>
<td><p>[required] (Discontinued) The ID of the Amazon Web Services
account that you want to associate with Amazon Macie Classic as a member
account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_member_account(
      memberAccountId = "string"
    )
