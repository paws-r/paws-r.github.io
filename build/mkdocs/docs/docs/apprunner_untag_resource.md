<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove tags from an App Runner resource

### Description

Remove tags from an App Runner resource.

### Usage

    apprunner_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to remove tags from.</p>
<p>It must be the ARN of an App Runner resource.</p></td>
</tr>
<tr class="even">
<td><code id="apprunner_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys that you want to remove.</p></td>
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
