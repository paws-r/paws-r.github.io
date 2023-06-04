<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more custom tags, each in the form of a key:value pair, to the specified resource

### Description

Adds one or more custom tags, each in the form of a key:value pair, to
the specified resource.

To learn more about using tags with Amazon Transcribe, refer to [Tagging
resources](https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).

### Usage

    transcribeservice_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource you
want to tag. ARNs have the format
<code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
<p>For example,
<code>arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name</code>.</p>
<p>Valid values for <code>resource-type</code> are:
<code>transcription-job</code>, <code>medical-transcription-job</code>,
<code>vocabulary</code>, <code>medical-vocabulary</code>,
<code>vocabulary-filter</code>, and
<code>language-model</code>.</p></td>
</tr>
<tr class="even">
<td><code id="transcribeservice_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Adds one or more custom tags, each in the form of a
key:value pair, to the specified resource.</p>
<p>To learn more about using tags with Amazon Transcribe, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
