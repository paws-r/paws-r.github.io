<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Adds or updates user-defined contact information associated with the
specified contact. At least one field to be updated must be present in
the request.

You can add or update user-defined contact information for both ongoing
and completed contacts.

### Usage

    connect_update_contact(InstanceId, ContactId, Name, Description,
      References)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_update_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with your contact
center.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_contact_:_Name">Name</code></td>
<td><p>The name of the contact.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_:_Description">Description</code></td>
<td><p>The description of the contact.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_:_References">References</code></td>
<td><p>Well-formed data on contact, shown to agents on Contact Control
Panel (CCP).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact(
      InstanceId = "string",
      ContactId = "string",
      Name = "string",
      Description = "string",
      References = list(
        list(
          Value = "string",
          Type = "URL"|"ATTACHMENT"|"NUMBER"|"STRING"|"DATE"|"EMAIL"
        )
      )
    )
