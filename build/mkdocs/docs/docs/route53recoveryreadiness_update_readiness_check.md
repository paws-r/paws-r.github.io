<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_update_readiness_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a readiness check

### Description

Updates a readiness check.

### Usage

    route53recoveryreadiness_update_readiness_check(ReadinessCheckName,
      ResourceSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_update_readiness_check_:_ReadinessCheckName">ReadinessCheckName</code></td>
<td><p>[required] Name of a readiness check.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_update_readiness_check_:_ResourceSetName">ResourceSetName</code></td>
<td><p>[required] The name of the resource set to be checked.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReadinessCheckArn = "string",
      ReadinessCheckName = "string",
      ResourceSet = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$update_readiness_check(
      ReadinessCheckName = "string",
      ResourceSetName = "string"
    )
