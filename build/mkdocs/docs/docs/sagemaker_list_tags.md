<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the tags for the specified SageMaker resource

### Description

Returns the tags for the specified SageMaker resource.

### Usage

    sagemaker_list_tags(ResourceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource whose
tags you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_tags_:_NextToken">NextToken</code></td>
<td><p>If the response to the previous <code>list_tags</code> request is
truncated, SageMaker returns this token. To retrieve the next set of
tags, use it in the subsequent request.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_tags_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of tags to return.</p></td>
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags(
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
