<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_get_contact_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the resource policies attached to the specified contact or escalation plan

### Description

Retrieves the resource policies attached to the specified contact or
escalation plan.

### Usage

    ssmcontacts_get_contact_policy(ContactArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_get_contact_policy_:_ContactArn">ContactArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact or
escalation plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactArn = "string",
      Policy = "string"
    )

### Request syntax

    svc$get_contact_policy(
      ContactArn = "string"
    )
