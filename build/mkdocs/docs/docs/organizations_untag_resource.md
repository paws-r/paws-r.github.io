<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes any tags with the specified keys from the specified resource

### Description

Removes any tags with the specified keys from the specified resource.

You can attach tags to the following resources in Organizations.

-   Amazon Web Services account

-   Organization root

-   Organizational unit (OU)

-   Policy (any type)

This operation can be called only from the organization's management
account.

### Usage

    organizations_untag_resource(ResourceId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_untag_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource to remove a tag from.</p>
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
id="organizations_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of keys for tags to remove from the specified
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceId = "string",
      TagKeys = list(
        "string"
      )
    )
