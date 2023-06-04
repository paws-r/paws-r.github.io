<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_list_template_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all the versions of a specific message template

### Description

Retrieves information about all the versions of a specific message
template.

### Usage

    pinpoint_list_template_versions(NextToken, PageSize, TemplateName,
      TemplateType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_list_template_versions_:_NextToken">NextToken</code></td>
<td><p>The string that specifies which page of results to return in a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_list_template_versions_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_list_template_versions_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the message template. A template name must
start with an alphanumeric character and can contain a maximum of 128
characters. The characters can be alphanumeric characters, underscores
(_), or hyphens (-). Template names are case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_list_template_versions_:_TemplateType">TemplateType</code></td>
<td><p>[required] The type of channel that the message template is
designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateVersionsResponse = list(
        Item = list(
          list(
            CreationDate = "string",
            DefaultSubstitutions = "string",
            LastModifiedDate = "string",
            TemplateDescription = "string",
            TemplateName = "string",
            TemplateType = "string",
            Version = "string"
          )
        ),
        Message = "string",
        NextToken = "string",
        RequestID = "string"
      )
    )

### Request syntax

    svc$list_template_versions(
      NextToken = "string",
      PageSize = "string",
      TemplateName = "string",
      TemplateType = "string"
    )
