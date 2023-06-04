<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified resource

### Description

Removes one or more tags from the specified resource.

### Usage

    servicediscovery_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to retrieve tags for.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys to remove from the specified
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example removes the "Department" and "Project" tags from a
    # resource.
    svc$untag_resource(
      ResourceARN = "arn:aws:servicediscovery:us-east-1:123456789012:namespace/...",
      TagKeys = list(
        "Project",
        "Department"
      )
    )

    ## End(Not run)
