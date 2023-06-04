<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_list_access_points_for_object_lambda</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns some or all (up to 1,000) access points associated with the Object Lambda Access Point per call

### Description

Returns some or all (up to 1,000) access points associated with the
Object Lambda Access Point per call. If there are more access points
than what can be returned in one call, the response will include a
continuation token that you can use to list the additional access
points.

The following actions are related to
`list_access_points_for_object_lambda`:

-   `create_access_point_for_object_lambda`

-   `delete_access_point_for_object_lambda`

-   `get_access_point_for_object_lambda`

### Usage

    s3control_list_access_points_for_object_lambda(AccountId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_list_access_points_for_object_lambda_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the account that owns the specified
Object Lambda Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_list_access_points_for_object_lambda_:_NextToken">NextToken</code></td>
<td><p>If the list has more access points than can be returned in one
call to this API, this field contains a continuation token that you can
provide in subsequent calls to this API to retrieve additional access
points.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_list_access_points_for_object_lambda_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of access points that you want to include in
the list. The response may contain fewer access points but will never
contain more. If there are more than this number of access points, then
the response will include a continuation token in the
<code>NextToken</code> field that you can use to retrieve the next page
of access points.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectLambdaAccessPointList = list(
        list(
          Name = "string",
          ObjectLambdaAccessPointArn = "string",
          Alias = list(
            Value = "string",
            Status = "PROVISIONING"|"READY"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_access_points_for_object_lambda(
      AccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
