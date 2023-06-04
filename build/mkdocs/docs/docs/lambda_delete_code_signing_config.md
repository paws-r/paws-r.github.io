<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_delete_code_signing_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the code signing configuration

### Description

Deletes the code signing configuration. You can delete the code signing
configuration only if no function is using it.

### Usage

    lambda_delete_code_signing_config(CodeSigningConfigArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_delete_code_signing_config_:_CodeSigningConfigArn">CodeSigningConfigArn</code></td>
<td><p>[required] The The Amazon Resource Name (ARN) of the code signing
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_code_signing_config(
      CodeSigningConfigArn = "string"
    )
