<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_code_signing_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of code signing configurations

### Description

Returns a list of [code signing
configurations](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
A request returns up to 10,000 configurations per call. You can use the
`MaxItems` parameter to return fewer configurations per call.

### Usage

    lambda_list_code_signing_configs(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_code_signing_configs_:_Marker">Marker</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_code_signing_configs_:_MaxItems">MaxItems</code></td>
<td><p>Maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      CodeSigningConfigs = list(
        list(
          CodeSigningConfigId = "string",
          CodeSigningConfigArn = "string",
          Description = "string",
          AllowedPublishers = list(
            SigningProfileVersionArns = list(
              "string"
            )
          ),
          CodeSigningPolicies = list(
            UntrustedArtifactOnDeployment = "Warn"|"Enforce"
          ),
          LastModified = "string"
        )
      )
    )

### Request syntax

    svc$list_code_signing_configs(
      Marker = "string",
      MaxItems = 123
    )
