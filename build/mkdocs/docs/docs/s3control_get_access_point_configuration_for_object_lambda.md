<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_access_point_configuration_for_object_lambda</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration for an Object Lambda Access Point

### Description

Returns configuration for an Object Lambda Access Point.

The following actions are related to
`get_access_point_configuration_for_object_lambda`:

-   `put_access_point_configuration_for_object_lambda`

### Usage

    s3control_get_access_point_configuration_for_object_lambda(AccountId,
      Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_access_point_configuration_for_object_lambda_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the account that owns the specified
Object Lambda Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_access_point_configuration_for_object_lambda_:_Name">Name</code></td>
<td><p>[required] The name of the Object Lambda Access Point you want to
return the configuration for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$get_access_point_configuration_for_object_lambda(
      AccountId = "string",
      Name = "string"
    )
