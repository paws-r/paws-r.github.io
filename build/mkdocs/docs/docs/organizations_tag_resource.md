<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to the specified resource

### Description

Adds one or more tags to the specified resource.

Currently, you can attach tags to the following resources in
Organizations.

-   Amazon Web Services account

-   Organization root

-   Organizational unit (OU)

-   Policy (any type)

This operation can be called only from the organization's management
account.

### Usage

    organizations_tag_resource(ResourceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_tag_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource to add a tag to.</p>
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
<td><code id="organizations_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags to add to the specified resource.</p>
<p>For each tag in the list, you must specify both a tag key and a
value. The value can be an empty string, but you can't set it to
<code>null</code>.</p>
<p>If any one of the tags is not valid or if you exceed the maximum
allowed number of tags for a resource, then the entire request
fails.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
