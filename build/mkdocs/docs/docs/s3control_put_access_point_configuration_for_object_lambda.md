<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_access_point_configuration_for_object_lambda</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces configuration for an Object Lambda Access Point

### Description

Replaces configuration for an Object Lambda Access Point.

The following actions are related to
`put_access_point_configuration_for_object_lambda`:

-   `get_access_point_configuration_for_object_lambda`

### Usage

    s3control_put_access_point_configuration_for_object_lambda(AccountId,
      Name, Configuration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_access_point_configuration_for_object_lambda_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the account that owns the specified
Object Lambda Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_access_point_configuration_for_object_lambda_:_Name">Name</code></td>
<td><p>[required] The name of the Object Lambda Access Point.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_put_access_point_configuration_for_object_lambda_:_Configuration">Configuration</code></td>
<td><p>[required] Object Lambda Access Point configuration
document.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_access_point_configuration_for_object_lambda(
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
