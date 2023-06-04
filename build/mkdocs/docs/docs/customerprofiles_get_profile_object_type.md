<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_profile_object_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the object types for a specific domain

### Description

Returns the object types for a specific domain.

### Usage

    customerprofiles_get_profile_object_type(DomainName, ObjectTypeName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_profile_object_type_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_profile_object_type_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectTypeName = "string",
      Description = "string",
      TemplateId = "string",
      ExpirationDays = 123,
      EncryptionKey = "string",
      AllowProfileCreation = TRUE|FALSE,
      SourceLastUpdatedTimestampFormat = "string",
      Fields = list(
        list(
          Source = "string",
          Target = "string",
          ContentType = "STRING"|"NUMBER"|"PHONE_NUMBER"|"EMAIL_ADDRESS"|"NAME"
        )
      ),
      Keys = list(
        list(
          list(
            StandardIdentifiers = list(
              "PROFILE"|"ASSET"|"CASE"|"UNIQUE"|"SECONDARY"|"LOOKUP_ONLY"|"NEW_ONLY"|"ORDER"
            ),
            FieldNames = list(
              "string"
            )
          )
        )
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_profile_object_type(
      DomainName = "string",
      ObjectTypeName = "string"
    )
