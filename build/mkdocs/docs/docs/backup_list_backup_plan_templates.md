<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_backup_plan_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates

### Description

Returns metadata of your saved backup plan templates, including the
template ID, name, and the creation and deletion dates.

### Usage

    backup_list_backup_plan_templates(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_backup_plan_templates_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned items. For
example, if a request is made to return <code>maxResults</code> number
of items, <code>NextToken</code> allows you to return more items in your
list starting at the location pointed to by the next token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_backup_plan_templates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to be returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      BackupPlanTemplatesList = list(
        list(
          BackupPlanTemplateId = "string",
          BackupPlanTemplateName = "string"
        )
      )
    )

### Request syntax

    svc$list_backup_plan_templates(
      NextToken = "string",
      MaxResults = 123
    )
