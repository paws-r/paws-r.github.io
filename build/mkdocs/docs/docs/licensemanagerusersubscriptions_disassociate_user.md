<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_disassociate_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the user from an EC2 instance providing user-based subscriptions

### Description

Disassociates the user from an EC2 instance providing user-based
subscriptions.

### Usage

    licensemanagerusersubscriptions_disassociate_user(Domain,
      IdentityProvider, InstanceId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_disassociate_user_:_Domain">Domain</code></td>
<td><p>The domain name of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_disassociate_user_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] An object that specifies details for the identity
provider.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_disassociate_user_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the EC2 instance, which provides user-based
subscriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_disassociate_user_:_Username">Username</code></td>
<td><p>[required] The user name from the identity provider for the
user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceUserSummary = list(
        AssociationDate = "string",
        DisassociationDate = "string",
        Domain = "string",
        IdentityProvider = list(
          ActiveDirectoryIdentityProvider = list(
            DirectoryId = "string"
          )
        ),
        InstanceId = "string",
        Status = "string",
        StatusMessage = "string",
        Username = "string"
      )
    )

### Request syntax

    svc$disassociate_user(
      Domain = "string",
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      InstanceId = "string",
      Username = "string"
    )
