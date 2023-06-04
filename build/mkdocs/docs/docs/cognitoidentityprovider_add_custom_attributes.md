<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_add_custom_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds additional user attributes to the user pool schema

### Description

Adds additional user attributes to the user pool schema.

### Usage

    cognitoidentityprovider_add_custom_attributes(UserPoolId,
      CustomAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_add_custom_attributes_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
add custom attributes.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_add_custom_attributes_:_CustomAttributes">CustomAttributes</code></td>
<td><p>[required] An array of custom attributes, such as Mutable and
Name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_custom_attributes(
      UserPoolId = "string",
      CustomAttributes = list(
        list(
          Name = "string",
          AttributeDataType = "String"|"Number"|"DateTime"|"Boolean",
          DeveloperOnlyAttribute = TRUE|FALSE,
          Mutable = TRUE|FALSE,
          Required = TRUE|FALSE,
          NumberAttributeConstraints = list(
            MinValue = "string",
            MaxValue = "string"
          ),
          StringAttributeConstraints = list(
            MinLength = "string",
            MaxLength = "string"
          )
        )
      )
    )
