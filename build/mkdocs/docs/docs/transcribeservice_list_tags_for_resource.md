<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags associated with the specified transcription job, vocabulary, model, or resource

### Description

Lists all tags associated with the specified transcription job,
vocabulary, model, or resource.

To learn more about using tags with Amazon Transcribe, refer to [Tagging
resources](https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).

### Usage

    transcribeservice_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Returns a list of all tags associated with the
specified Amazon Resource Name (ARN). ARNs have the format
<code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
<p>For example,
<code>arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name</code>.</p>
<p>Valid values for <code>resource-type</code> are:
<code>transcription-job</code>, <code>medical-transcription-job</code>,
<code>vocabulary</code>, <code>medical-vocabulary</code>,
<code>vocabulary-filter</code>, and
<code>language-model</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
