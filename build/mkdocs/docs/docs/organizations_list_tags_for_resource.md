<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists tags that are attached to the specified resource

### Description

Lists tags that are attached to the specified resource.

You can attach tags to the following resources in Organizations.

-   Amazon Web Services account

-   Organization root

-   Organizational unit (OU)

-   Policy (any type)

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_list_tags_for_resource(ResourceId, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_list_tags_for_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource with the tags to list.</p>
<p>You can specify any of the following taggable resources.</p>
<ul>
<li><p>Amazon Web Services account – specify the account ID
number.</p></li>
<li><p>Organizational unit – specify the OU ID that begins with <code
style="white-space: pre;">⁠ou-⁠</code> and looks similar to: <code
style="white-space: pre;">⁠ou-1a2b-34uvwxyz ⁠</code></p></li>
<li><p>Root – specify the root ID that begins with <code
style="white-space: pre;">⁠r-⁠</code> and looks similar to: <code
style="white-space: pre;">⁠r-1a2b ⁠</code></p></li>
<li><p>Policy – specify the policy ID that begins with <code
style="white-space: pre;">⁠p-⁠</code> andlooks similar to: <code
style="white-space: pre;">⁠p-12abcdefg3 ⁠</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="organizations_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A
<code>NextToken</code> response indicates that more output is available.
Set this parameter to the value of the previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceId = "string",
      NextToken = "string"
    )
