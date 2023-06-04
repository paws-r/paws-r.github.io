<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the tags associated with an Amazon Connect Customer Profiles resource

### Description

Displays the tags associated with an Amazon Connect Customer Profiles
resource. In Connect Customer Profiles, domains, profile object types,
and integrations can be tagged.

### Usage

    customerprofiles_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource for which you want to view
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
