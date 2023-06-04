<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_delete_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the standard customer profile and all data pertaining to the profile

### Description

Deletes the standard customer profile and all data pertaining to the
profile.

### Usage

    customerprofiles_delete_profile(ProfileId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_delete_profile_:_ProfileId">ProfileId</code></td>
<td><p>[required] The unique identifier of a customer profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_delete_profile_:_DomainName">DomainName</code></td>
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

    svc$delete_profile(
      ProfileId = "string",
      DomainName = "string"
    )
