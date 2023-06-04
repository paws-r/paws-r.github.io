<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an account with an Amazon Macie administrator account

### Description

Associates an account with an Amazon Macie administrator account.

### Usage

    macie2_create_member(account, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_create_member_:_account">account</code></td>
<td><p>[required] The details of the account to associate with the
administrator account.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_create_member_:_tags">tags</code></td>
<td><p>A map of key-value pairs that specifies the tags to associate
with the account in Amazon Macie.</p>
<p>An account can have a maximum of 50 tags. Each tag consists of a tag
key and an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$create_member(
      account = list(
        accountId = "string",
        email = "string"
      ),
      tags = list(
        "string"
      )
    )
