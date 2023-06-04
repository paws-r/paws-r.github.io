<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_contact_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the contact attributes for the specified contact

### Description

Retrieves the contact attributes for the specified contact.

### Usage

    connect_get_contact_attributes(InstanceId, InitialContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_contact_attributes_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_contact_attributes_:_InitialContactId">InitialContactId</code></td>
<td><p>[required] The identifier of the initial contact.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        "string"
      )
    )

### Request syntax

    svc$get_contact_attributes(
      InstanceId = "string",
      InitialContactId = "string"
    )
