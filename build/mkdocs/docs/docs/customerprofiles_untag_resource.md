<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified Amazon Connect Customer Profiles resource

### Description

Removes one or more tags from the specified Amazon Connect Customer
Profiles resource. In Connect Customer Profiles, domains, profile object
types, and integrations can be tagged.

### Usage

    customerprofiles_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource from which you are removing
tags.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
