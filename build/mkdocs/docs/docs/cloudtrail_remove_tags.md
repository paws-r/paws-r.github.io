<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_remove_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from a trail, event data store, or channel

### Description

Removes the specified tags from a trail, event data store, or channel.

### Usage

    cloudtrail_remove_tags(ResourceId, TagsList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_remove_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] Specifies the ARN of the trail, event data store, or
channel from which tags should be removed.</p>
<p>Example trail ARN format:
<code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p>
<p>Example event data store ARN format: <code
style="white-space: pre;">⁠arn:aws:cloudtrail:us-east-2:12345678910:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE⁠</code></p>
<p>Example channel ARN format:
<code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code></p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_remove_tags_:_TagsList">TagsList</code></td>
<td><p>[required] Specifies a list of tags to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags(
      ResourceId = "string",
      TagsList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
