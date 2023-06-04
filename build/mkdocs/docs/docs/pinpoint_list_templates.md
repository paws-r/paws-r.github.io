<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_list_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all the message templates that are associated with your Amazon Pinpoint account

### Description

Retrieves information about all the message templates that are
associated with your Amazon Pinpoint account.

### Usage

    pinpoint_list_templates(NextToken, PageSize, Prefix, TemplateType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pinpoint_list_templates_:_NextToken">NextToken</code></td>
<td><p>The string that specifies which page of results to return in a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="even">
<td><code id="pinpoint_list_templates_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response. This parameter is not supported for application,
campaign, and journey metrics.</p></td>
</tr>
<tr class="odd">
<td><code id="pinpoint_list_templates_:_Prefix">Prefix</code></td>
<td><p>The substring to match in the names of the message templates to
include in the results. If you specify this value, Amazon Pinpoint
returns only those templates whose names begin with the value that you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_list_templates_:_TemplateType">TemplateType</code></td>
<td><p>The type of message template to include in the results. Valid
values are: EMAIL, PUSH, SMS, and VOICE. To include all types of
templates in the results, don't include this parameter in your
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplatesResponse = list(
        Item = list(
          list(
            Arn = "string",
            CreationDate = "string",
            DefaultSubstitutions = "string",
            LastModifiedDate = "string",
            tags = list(
              "string"
            ),
            TemplateDescription = "string",
            TemplateName = "string",
            TemplateType = "EMAIL"|"SMS"|"VOICE"|"PUSH"|"INAPP",
            Version = "string"
          )
        ),
        NextToken = "string"
      )
    )

### Request syntax

    svc$list_templates(
      NextToken = "string",
      PageSize = "string",
      Prefix = "string",
      TemplateType = "string"
    )
