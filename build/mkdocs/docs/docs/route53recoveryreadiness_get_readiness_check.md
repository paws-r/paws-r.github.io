<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_get_readiness_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details about a readiness check

### Description

Gets details about a readiness check.

### Usage

    route53recoveryreadiness_get_readiness_check(ReadinessCheckName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_get_readiness_check_:_ReadinessCheckName">ReadinessCheckName</code></td>
<td><p>[required] Name of a readiness check.</p></td>
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

    svc$get_readiness_check(
      ReadinessCheckName = "string"
    )
