<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_create_access_point_for_object_lambda</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Object Lambda Access Point

### Description

Creates an Object Lambda Access Point. For more information, see
[Transforming objects with Object Lambda Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html)
in the *Amazon S3 User Guide*.

The following actions are related to
`create_access_point_for_object_lambda`:

-   `delete_access_point_for_object_lambda`

-   `get_access_point_for_object_lambda`

-   `list_access_points_for_object_lambda`

### Usage

    s3control_create_access_point_for_object_lambda(AccountId, Name,
      Configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_create_access_point_for_object_lambda_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for owner of the
specified Object Lambda Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_access_point_for_object_lambda_:_Name">Name</code></td>
<td><p>[required] The name you want to assign to this Object Lambda
Access Point.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_access_point_for_object_lambda_:_Configuration">Configuration</code></td>
<td><p>[required] Object Lambda Access Point configuration as a JSON
document.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectLambdaAccessPointArn = "string",
      Alias = list(
        Value = "string",
        Status = "PROVISIONING"|"READY"
      )
    )

### Request syntax

    svc$create_access_point_for_object_lambda(
      AccountId = "string",
      Name = "string",
      Configuration = list(
        SupportingAccessPoint = "string",
        CloudWatchMetricsEnabled = TRUE|FALSE,
        AllowedFeatures = list(
          "GetObject-Range"|"GetObject-PartNumber"|"HeadObject-Range"|"HeadObject-PartNumber"
        ),
        TransformationConfigurations = list(
          list(
            Actions = list(
              "GetObject"|"HeadObject"|"ListObjects"|"ListObjectsV2"
            ),
            ContentTransformation = list(
              AwsLambda = list(
                FunctionArn = "string",
                FunctionPayload = "string"
              )
            )
          )
        )
      )
    )
