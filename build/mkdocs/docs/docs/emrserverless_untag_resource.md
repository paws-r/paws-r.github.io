<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from resources

### Description

Removes tags from resources.

### Usage

    emrserverless_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource to list the tags for. Currently, the supported resources are
Amazon EMR Serverless applications and job runs.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The keys of the tags to be removed.</p></td>
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
