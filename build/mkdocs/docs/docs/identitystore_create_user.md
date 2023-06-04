<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user within the specified identity store

### Description

Creates a user within the specified identity store.

### Usage

    identitystore_create_user(IdentityStoreId, UserName, Name, DisplayName,
      NickName, ProfileUrl, Emails, Addresses, PhoneNumbers, UserType, Title,
      PreferredLanguage, Locale, Timezone)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="identitystore_create_user_:_IdentityStoreId">IdentityStoreId</code></td>
<td><p>[required] The globally unique identifier for the identity
store.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_create_user_:_UserName">UserName</code></td>
<td><p>A unique string used to identify the user. The length limit is
128 characters. This value can consist of letters, accented characters,
symbols, numbers, and punctuation. This value is specified at the time
the user is created and stored as an attribute of the user object in the
identity store. "Administrator" and "AWSAdministrators" are reserved
names and can't be used for users or groups.</p></td>
</tr>
<tr class="odd">
<td><code id="identitystore_create_user_:_Name">Name</code></td>
<td><p>An object containing the name of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_create_user_:_DisplayName">DisplayName</code></td>
<td><p>A string containing the name of the user. This value is typically
formatted for display when the user is referenced. For example, "John
Doe."</p></td>
</tr>
<tr class="odd">
<td><code id="identitystore_create_user_:_NickName">NickName</code></td>
<td><p>A string containing an alternate name for the user.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_create_user_:_ProfileUrl">ProfileUrl</code></td>
<td><p>A string containing a URL that might be associated with the
user.</p></td>
</tr>
<tr class="odd">
<td><code id="identitystore_create_user_:_Emails">Emails</code></td>
<td><p>A list of <code>Email</code> objects containing email addresses
associated with the user.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_create_user_:_Addresses">Addresses</code></td>
<td><p>A list of <code>Address</code> objects containing addresses
associated with the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="identitystore_create_user_:_PhoneNumbers">PhoneNumbers</code></td>
<td><p>A list of <code>PhoneNumber</code> objects containing phone
numbers associated with the user.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_create_user_:_UserType">UserType</code></td>
<td><p>A string indicating the type of user. Possible values are left
unspecified. The value can vary based on your specific use
case.</p></td>
</tr>
<tr class="odd">
<td><code id="identitystore_create_user_:_Title">Title</code></td>
<td><p>A string containing the title of the user. Possible values are
left unspecified. The value can vary based on your specific use
case.</p></td>
</tr>
<tr class="even">
<td><code
id="identitystore_create_user_:_PreferredLanguage">PreferredLanguage</code></td>
<td><p>A string containing the preferred language of the user. For
example, "American English" or "en-us."</p></td>
</tr>
<tr class="odd">
<td><code id="identitystore_create_user_:_Locale">Locale</code></td>
<td><p>A string containing the geographical region or location of the
user.</p></td>
</tr>
<tr class="even">
<td><code id="identitystore_create_user_:_Timezone">Timezone</code></td>
<td><p>A string containing the time zone of the user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserId = "string",
      IdentityStoreId = "string"
    )

### Request syntax

    svc$create_user(
      IdentityStoreId = "string",
      UserName = "string",
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
      Timezone = "string"
    )
