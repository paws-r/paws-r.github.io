<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_describe_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the user metadata and attributes from the UserId in an identity store

### Description

Retrieves the user metadata and attributes from the `UserId` in an
identity store.

### Usage

    identitystore_describe_user(IdentityStoreId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_describe_user_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity store,
such as <code>d-1234567890</code>. In this example, <code
style="white-space: pre;">⁠d-⁠</code> is a fixed prefix, and
<code>1234567890</code> is a randomly generated string that contains
numbers and lower case letters. This value is generated at the time that
a new identity store is created.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_describe_user_:_UserId">UserId</code></td>
<td><p>[required] The identifier for a user in the identity
store.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserName = "string",
      UserId = "string",
      ExternalIds = list(
        list(
          Issuer = "string",
          Id = "string"
        )
      ),
      Name = list(
        Formatted = "string",
        FamilyName = "string",
        GivenName = "string",
        MiddleName = "string",
        HonorificPrefix = "string",
        HonorificSuffix = "string"
      ),
      DisplayName = "string",
      NickName = "string",
      ProfileUrl = "string",
      Emails = list(
        list(
          Value = "string",
          Type = "string",
          Primary = TRUE|FALSE
        )
      ),
      Addresses = list(
        list(
          StreetAddress = "string",
          Locality = "string",
          Region = "string",
          PostalCode = "string",
          Country = "string",
          Formatted = "string",
          Type = "string",
          Primary = TRUE|FALSE
        )
      ),
      PhoneNumbers = list(
        list(
          Value = "string",
          Type = "string",
          Primary = TRUE|FALSE
        )
      ),
      UserType = "string",
      Title = "string",
      PreferredLanguage = "string",
      Locale = "string",
      Timezone = "string",
      IdentityStoreId = "string"
    )

### Request syntax

    svc$describe_user(
      IdentityStoreId = "string",
      UserId = "string"
    )
