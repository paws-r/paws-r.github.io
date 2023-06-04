<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to a resource

### Description

Adds one or more tags to a resource.

### Usage

    securityhub_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource to apply the tags to.</p></td>
</tr>
<tr class="even">
<td><code id="securityhub_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to add to the resource. You can add up to 50
tags at a time. The tag keys can be no longer than 128 characters. The
tag values can be no longer than 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example adds the 'Department' and 'Area' tags to the
    # specified resource.
    svc$tag_resource(
      ResourceArn = "arn:aws:securityhub:us-west-1:123456789012:hub/default",
      Tags = list(
        Area = "USMidwest",
        Department = "Operations"
      )
    )

    ## End(Not run)
