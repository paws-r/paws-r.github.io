<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the list of key-value tags assigned to the application

### Description

Retrieves the list of key-value tags assigned to the application. For
more information, see [Using
Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).

### Usage

    kinesisanalyticsv2_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the application for which to retrieve
tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )
