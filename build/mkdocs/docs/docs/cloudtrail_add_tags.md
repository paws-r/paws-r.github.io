<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to a trail, event data store, or channel, up to a limit of 50

### Description

Adds one or more tags to a trail, event data store, or channel, up to a
limit of 50. Overwrites an existing tag's value when a new value is
specified for an existing tag key. Tag key names must be unique; you
cannot have two keys with the same name but different values. If you
specify a key without a value, the tag will be created with the
specified key and a value of null. You can tag a trail or event data
store that applies to all Amazon Web Services Regions only from the
Region in which the trail or event data store was created (also known as
its home region).

### Usage

    cloudtrail_add_tags(ResourceId, TagsList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_add_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] Specifies the ARN of the trail, event data store, or
channel to which one or more tags will be added.</p>
<p>The format of a trail ARN is:
<code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p>
<p>The format of an event data store ARN is: <code
style="white-space: pre;">⁠arn:aws:cloudtrail:us-east-2:12345678910:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE⁠</code></p>
<p>The format of a channel ARN is:
<code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code></p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_add_tags_:_TagsList">TagsList</code></td>
<td><p>[required] Contains a list of tags, up to a limit of 50</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags(
      ResourceId = "string",
      TagsList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
