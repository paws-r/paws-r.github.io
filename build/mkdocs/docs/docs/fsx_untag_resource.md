<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action removes a tag from an Amazon FSx resource

### Description

This action removes a tag from an Amazon FSx resource.

### Usage

    fsx_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the Amazon FSx resource to untag.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of keys of tags on the resource to untag. In
case the tag key doesn't exist, the call will still succeed to be
idempotent.</p></td>
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
    # This operation untags an Amazon FSx resource.
    svc$untag_resource(
      ResourceARN = "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec",
      TagKeys = list(
        "Name"
      )
    )

    ## End(Not run)
