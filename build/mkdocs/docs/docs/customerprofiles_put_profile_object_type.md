<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_put_profile_object_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Defines a ProfileObjectType

### Description

Defines a ProfileObjectType.

To add or remove tags on an existing ObjectType, see
[TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/`untag_resource`.

### Usage

    customerprofiles_put_profile_object_type(DomainName, ObjectTypeName,
      Description, TemplateId, ExpirationDays, EncryptionKey,
      AllowProfileCreation, SourceLastUpdatedTimestampFormat, Fields, Keys,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_type_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_profile_object_type_:_ObjectTypeName">ObjectTypeName</code></td>
<td><p>[required] The name of the profile object type.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_type_:_Description">Description</code></td>
<td><p>[required] Description of the profile object type.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_profile_object_type_:_TemplateId">TemplateId</code></td>
<td><p>A unique identifier for the object template. For some attributes
in the request, the service will use the default value from the object
template when TemplateId is present. If these attributes are present in
the request, the service may return a <code>BadRequestException</code>.
These attributes include: AllowProfileCreation,
SourceLastUpdatedTimestampFormat, Fields, and Keys. For example, if
AllowProfileCreation is set to true when TemplateId is set, the service
may return a <code>BadRequestException</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_type_:_ExpirationDays">ExpirationDays</code></td>
<td><p>The number of days until the data in the object expires.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_profile_object_type_:_EncryptionKey">EncryptionKey</code></td>
<td><p>The customer-provided key to encrypt the profile object that will
be created in this profile object type.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_type_:_AllowProfileCreation">AllowProfileCreation</code></td>
<td><p>Indicates whether a profile should be created when data is
received if one doesn’t exist for an object of this type. The default is
<code>FALSE</code>. If the AllowProfileCreation flag is set to
<code>FALSE</code>, then the service tries to fetch a standard profile
and associate this object with the profile. If it is set to
<code>TRUE</code>, and if no match is found, then the service creates a
new standard profile.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_profile_object_type_:_SourceLastUpdatedTimestampFormat">SourceLastUpdatedTimestampFormat</code></td>
<td><p>The format of your <code>sourceLastUpdatedTimestamp</code> that
was previously set up.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_type_:_Fields">Fields</code></td>
<td><p>A map of the name and ObjectType field.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_put_profile_object_type_:_Keys">Keys</code></td>
<td><p>A list of unique keys that can be used to map data to the
profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_put_profile_object_type_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
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

    svc$put_profile_object_type(
      DomainName = "string",
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
      Tags = list(
        "string"
      )
    )
