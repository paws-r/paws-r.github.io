<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more key-value tags to a Kinesis Data Analytics application

### Description

Adds one or more key-value tags to a Kinesis Data Analytics application.
Note that the maximum number of application tags includes system tags.
The maximum number of user-defined application tags is 50. For more
information, see [Using
Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).

### Usage

    kinesisanalyticsv2_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the application to assign the
tags.</p></td>
</tr>
<tr class="even">
<td><code id="kinesisanalyticsv2_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The key-value tags to assign to the
application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
