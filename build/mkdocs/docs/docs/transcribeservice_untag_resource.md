<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the specified Amazon Transcribe resource

### Description

Removes the specified tags from the specified Amazon Transcribe
resource.

If you include `untag_resource` in your request, you must also include
`ResourceArn` and `TagKeys`.

### Usage

    transcribeservice_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon
Transcribe resource you want to remove tags from. ARNs have the format
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
<td><code
id="transcribeservice_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Removes the specified tag keys from the specified
Amazon Transcribe resource.</p></td>
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
