<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists tags for Amazon FSx resources

### Description

Lists tags for Amazon FSx resources.

When retrieving all tags, you can optionally specify the `MaxResults`
parameter to limit the number of tags in a response. If more tags
remain, Amazon FSx returns a `NextToken` value in the response. In this
case, send a later request with the `NextToken` request parameter set to
the value of `NextToken` from the last response.

This action is used in an iterative process to retrieve a list of your
tags. `list_tags_for_resource` is called first without a
`NextToken`value. Then the action continues to be called with the
`NextToken` parameter set to the value of the last `NextToken` value
until a response has no `NextToken`.

When using this action, keep the following in mind:

-   The implementation might return fewer than `MaxResults` file system
    descriptions while still including a `NextToken` value.

-   The order of tags returned in the response of one
    `list_tags_for_resource` call and the order of tags returned across
    the responses of a multi-call iteration is unspecified.

### Usage

    fsx_list_tags_for_resource(ResourceARN, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The ARN of the Amazon FSx resource that will have its
tags listed.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of tags to return in the response (integer). This
parameter value must be greater than 0. The number of items that Amazon
FSx returns is the minimum of the <code>MaxResults</code> parameter
specified in the request and the service's internal maximum number of
items per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>Opaque pagination token returned from a previous
<code>list_tags_for_resource</code> operation (String). If a token
present, the action continues the list from where the returning call
left off.</p></td>
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

    svc$list_tags_for_resource(
      ResourceARN = "string",
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This operation lists tags for an Amazon FSx resource.
    svc$list_tags_for_resource(
      ResourceARN = "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec"
    )

    ## End(Not run)
