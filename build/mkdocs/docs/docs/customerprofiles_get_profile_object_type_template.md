<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_profile_object_type_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the template information for a specific object type

### Description

Returns the template information for a specific object type.

A template is a predefined ProfileObjectType, such as
“Salesforce-Account” or “Salesforce-Contact.” When a user sends a
ProfileObject, using the PutProfileObject API, with an ObjectTypeName
that matches one of the TemplateIds, it uses the mappings from the
template.

### Usage

    customerprofiles_get_profile_object_type_template(TemplateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_profile_object_type_template_:_TemplateId">TemplateId</code></td>
<td><p>[required] A unique identifier for the object template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateId = "string",
      SourceName = "string",
      SourceObject = "string",
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
      )
    )

### Request syntax

    svc$get_profile_object_type_template(
      TemplateId = "string"
    )
