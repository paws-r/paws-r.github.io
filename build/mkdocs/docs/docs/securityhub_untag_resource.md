<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from a resource

### Description

Removes one or more tags from a resource.

### Usage

    securityhub_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource to remove the tags
from.</p></td>
</tr>
<tr class="even">
<td><code id="securityhub_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys associated with the tags to remove from
the resource. You can remove up to 50 tags at a time.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example removes the 'Department' tag from the specified
    # resource.
    svc$untag_resource(
      ResourceArn = "arn:aws:securityhub:us-west-1:123456789012:hub/default",
      TagKeys = list(
        "Department"
      )
    )

    ## End(Not run)
