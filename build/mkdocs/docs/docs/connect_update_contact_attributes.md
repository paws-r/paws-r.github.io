<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates user-defined contact attributes associated with the specified contact

### Description

Creates or updates user-defined contact attributes associated with the
specified contact.

You can create or update user-defined attributes for both ongoing and
completed contacts. For example, while the call is active, you can
update the customer's name or the reason the customer called. You can
add notes about steps that the agent took during the call that display
to the next agent that takes the call. You can also update attributes
for a contact using data from your CRM application and save the data
with the contact in Amazon Connect. You could also flag calls for
additional analysis, such as legal review or to identify abusive
callers.

Contact attributes are available in Amazon Connect for 24 months, and
are then deleted. For information about contact record retention and the
maximum size of the contact record attributes section, see [Feature
specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_update_contact_attributes(InitialContactId, InstanceId,
      Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_attributes_:_InitialContactId">InitialContactId</code></td>
<td><p>[required] The identifier of the contact. This is the identifier
of the contact associated with the first interaction with the contact
center.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_attributes_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] The Amazon Connect attributes. These attributes can be
accessed in flows just like any other contact attributes.</p>
<p>You can have up to 32,768 UTF-8 bytes across all attributes for a
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_attributes(
      InitialContactId = "string",
      InstanceId = "string",
      Attributes = list(
        "string"
      )
    )
