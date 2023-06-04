<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_profile_object_type_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the template information for object types

### Description

Lists all of the template information for object types.

### Usage

    customerprofiles_list_profile_object_type_templates(NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_profile_object_type_templates_:_NextToken">NextToken</code></td>
<td><p>The pagination token from the previous ListObjectTypeTemplates
API call.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_profile_object_type_templates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects returned per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          TemplateId = "string",
          SourceName = "string",
          SourceObject = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_profile_object_type_templates(
      NextToken = "string",
      MaxResults = 123
    )
