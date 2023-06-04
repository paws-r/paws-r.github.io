<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_code_signing_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified code signing configuration

### Description

Returns information about the specified code signing configuration.

### Usage

    lambda_get_code_signing_config(CodeSigningConfigArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_get_code_signing_config_:_CodeSigningConfigArn">CodeSigningConfigArn</code></td>
<td><p>[required] The The Amazon Resource Name (ARN) of the code signing
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CodeSigningConfig = list(
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

### Request syntax

    svc$get_code_signing_config(
      CodeSigningConfigArn = "string"
    )
