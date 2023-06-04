<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_put_contact_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a resource policy to the specified contact or escalation plan

### Description

Adds a resource policy to the specified contact or escalation plan. The
resource policy is used to share the contact or escalation plan using
Resource Access Manager (RAM). For more information about cross-account
sharing, see [Setting up cross-account
functionality](https://docs.aws.amazon.com/incident-manager/latest/userguide/).

### Usage

    ssmcontacts_put_contact_policy(ContactArn, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_put_contact_policy_:_ContactArn">ContactArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact or
escalation plan.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_put_contact_policy_:_Policy">Policy</code></td>
<td><p>[required] Details of the resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_contact_policy(
      ContactArn = "string",
      Policy = "string"
    )
