<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_profile_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a searchable key from a customer profile

### Description

Removes a searchable key from a customer profile.

### Usage

    customerprofiles_delete_profile_key(ProfileId, KeyName, Values,
      DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_profile_key_:_ProfileId">ProfileId</code></td>
<td><p>[required] The unique identifier of a customer profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_profile_key_:_KeyName">KeyName</code></td>
<td><p>[required] A searchable identifier of a customer
profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_delete_profile_key_:_Values">Values</code></td>
<td><p>[required] A list of key values.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_profile_key_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$delete_profile_key(
      ProfileId = "string",
      KeyName = "string",
      Values = list(
        "string"
      ),
      DomainName = "string"
    )
