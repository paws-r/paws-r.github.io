<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from a Kinesis Analytics application

### Description

Removes one or more tags from a Kinesis Analytics application. For more
information, see [Using
Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).

### Usage

    kinesisanalytics_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the Kinesis Analytics application from
which to remove the tags.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of keys of tags to remove from the specified
application.</p></td>
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
