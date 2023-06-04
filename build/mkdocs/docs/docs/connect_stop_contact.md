<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_stop_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Ends the specified contact

### Description

Ends the specified contact. This call does not work for the following
initiation methods:

-   DISCONNECT

-   TRANSFER

-   QUEUE\_TRANSFER

### Usage

    connect_stop_contact(ContactId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_stop_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The ID of the contact.</p></td>
</tr>
<tr class="even">
<td><code id="connect_stop_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_contact(
      ContactId = "string",
      InstanceId = "string"
    )
